// webworker.js

// Setup your project to serve `py-worker.js`. You should also serve
// `pyodide.js`, and all its associated `.asm.js`, `.json`,
// and `.wasm` files as well:
importScripts("https://cdn.jsdelivr.net/pyodide/v0.28.2/full/pyodide.js");

const python = `
import js

from lxml import etree

from pyschematron import DirectModeSchematronValidatorFactory
from pyschematron.direct_mode.schematron.ast_visitors import ResolveExtendsVisitor, ResolveAbstractPatternsVisitor, PhaseSelectionVisitor
from pyschematron.direct_mode.schematron.parsers.xml.parser import SchemaParser, ParsingContext
from pyschematron.direct_mode.xml_validation.results.svrl_builder import DefaultSVRLReportBuilder
from pyschematron.direct_mode.xml_validation.validators import SimpleSchematronXMLValidator
from pyschematron.utils import load_xml_document

from pathlib import Path

phase = '#ALL'

#base_url = Path(mountDir).absolute().as_uri()

#print(f'base_url={base_url}')

base_path = Path(mountDir).absolute() if mountDir is not None else None

schematron_xml = load_xml_document(schematron)
parsing_context = ParsingContext(base_path=base_path)

schematron_parser = SchemaParser()
schema = schematron_parser.parse(schematron_xml.getroot(), parsing_context)
schema = ResolveExtendsVisitor(schema).apply(schema)
schema = ResolveAbstractPatternsVisitor(schema).apply(schema)
schema = PhaseSelectionVisitor(schema, phase).apply(schema)

validator = SimpleSchematronXMLValidator(schema, phase, parsing_context.base_path)

xml_document = load_xml_document(xml)

validation_results = validator.validate_xml(xml_document)

svrl_report = DefaultSVRLReportBuilder().create_svrl_xml(validation_results)

report_str = etree.tostring(svrl_report, pretty_print=True).decode('utf-8')

result = 'XML is valid against the Schematron:' if validation_results.is_valid() else 'XML is invalid against the Schematron:'
result += '\\n' + report_str
result
`;

async function loadPyodideAndPackages() {
    self.pyodide = await loadPyodide();

    await pyodide.loadPackagesFromImports(python);

    await pyodide.loadPackage("micropip");
    const micropip = pyodide.pyimport("micropip");
    await micropip.install('pyschematron');

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

    const my_globals = { xml : self.xml, schematron : self.schematron, dirHandle : self.dirHandle, baseUri : self.baseUri, mountDir : mountDir };//{ xml : self.xml, xslt : self.xslt, base_url : self.base_url };

    // Now is the easy part, the one that is similar to working in the main thread:
    try {
        //await self.pyodide.loadPackagesFromImports(python);
        let results = await self.pyodide.runPythonAsync(python, { globals: pyodide.toPy(my_globals) } );
        self.postMessage({ results, id });
    } catch (error) {
        self.postMessage({ error: error.message, id });
    }
};
