// webworker.js

// Setup your project to serve `py-worker.js`. You should also serve
// `pyodide.js`, and all its associated `.asm.js`, `.json`,
// and `.wasm` files as well:
importScripts("https://cdn.jsdelivr.net/pyodide/v0.26.3/full/pyodide.js");

const python = `
import js

import xmlschema

from pathlib import Path

base_url = Path(mountDir).absolute().as_uri()

print(f'base_url={base_url}')

from xmlschema import XMLSchema, XMLSchema11, iter_errors
schema_class = XMLSchema11 if xsdVersion == '11' else XMLSchema
errors = list(iter_errors(xml, xsd, base_url=base_url + '/', cls=schema_class, use_location_hints=False))
result = 'XML is valid.' if not errors else 'XML is invalid:\\n' + '\\n'.join(map(lambda e: str(e), errors))
result
`;

async function loadPyodideAndPackages() {
    self.pyodide = await loadPyodide();

    await pyodide.loadPackagesFromImports(python);

    await pyodide.loadPackage("micropip");
    const micropip = pyodide.pyimport("micropip");
    await micropip.install('XMLSchema');

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
    var mountDir;

    if (self.baseUri.indexOf('file:') === 0) {
        mountDir = self.baseUri.substring(0, self.baseUri.length - 1).substring(5);
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

    const my_globals = { xml : self.xml, xsd : self.xsd, xsdVersion : self.xsdVersion, dirHandle : self.dirHandle, baseUri : self.baseUri, mountDir : mountDir };//{ xml : self.xml, xslt : self.xslt, base_url : self.base_url };

    // Now is the easy part, the one that is similar to working in the main thread:
    try {
        //await self.pyodide.loadPackagesFromImports(python);
        let results = await self.pyodide.runPythonAsync(python, { globals: pyodide.toPy(my_globals) } );
        self.postMessage({ results, id });
    } catch (error) {
        self.postMessage({ error: error.message, id });
    }
};
