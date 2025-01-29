// webworker.js

// Setup your project to serve `py-worker.js`. You should also serve
// `pyodide.js`, and all its associated `.asm.js`, `.json`,
// and `.wasm` files as well:
importScripts("https://cdn.jsdelivr.net/pyodide/v0.27.2/full/pyodide.js");

const python = `
import js
#import os

#print(os.listdir('/xslt-1.0'))
#import asyncio

from pathlib import Path

import urllib3

import lxml
from lxml import etree as ET

class TestResolver(ET.Resolver):
    def resolve(self, url, id, context):
        print("Resolving URL '%s'" % url)
        if url.startswith('http'):
            return self.resolve_string(urllib3.request('GET', url).data, context, base_url=url)
        else:
            return self.resolve_filename(url, context)


parser = ET.XMLParser(no_network=False)
parser.resolvers.add(TestResolver())

xml_tree = ET.fromstring(xml, parser, base_url=baseUri)
xslt_tree = ET.fromstring(xslt, parser, base_url=baseUri)
xslt_transformer = ET.XSLT(xslt_tree)
transformation_result = xslt_transformer(xml_tree)
str(transformation_result)
`;

async function loadPyodideAndPackages() {
    self.pyodide = await loadPyodide();
    //await self.pyodide.loadPackage(["urllib3"]);
    //await self.pyodide.loadPackage(["lxml"]);
    await pyodide.loadPackagesFromImports(python);

}

let pyodideReadyPromise = loadPyodideAndPackages();

self.onmessage = async (event) => {
    // make sure loading is done
    await pyodideReadyPromise;
    // Don't bother yet with this line, suppose our API is built in such a way:
    const { id, ...context } = event.data;
    // The worker copies the context in its own "memory" (an object mapping name to values)
    for (const key of Object.keys(context)) {
        self[key] = context[key];
    }

    if (self.baseUri.indexOf('file:') === 0) {
        const mountDir = self.baseUri.substring(0, self.baseUri.length - 1).substring(5);
        console.log(mountDir);

        if (!(await self.pyodide.runPythonAsync(`
from pathlib import Path
path = Path(mountDir)
path.exists()
        `,
            {globals: pyodide.toPy({mountDir})}
        ))) {
            await self.pyodide.mountNativeFS(mountDir, dirHandle);
        }
    }

    const my_globals = { xml : self.xml, xslt : self.xslt, dirHandle : self.dirHandle, baseUri : self.baseUri };//{ xml : self.xml, xslt : self.xslt, base_url : self.base_url };

    // Now is the easy part, the one that is similar to working in the main thread:
    try {
        //await self.pyodide.loadPackagesFromImports(python);
        let results = await self.pyodide.runPythonAsync(python, { globals: pyodide.toPy(my_globals) } );
        self.postMessage({ results, id });
    } catch (error) {
        self.postMessage({ error: error.message, id });
    }
};
