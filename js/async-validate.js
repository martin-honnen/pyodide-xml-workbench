import { asyncRun } from "./validate-worker-creation.js";

async function validate(xml, xsd, xsdVersion, dirHandle, baseUri) {
    try {
        setDocument(resultEditor, 'Validating...', 'text');

        const { results, error } = await asyncRun({xml, xsd, xsdVersion, dirHandle, baseUri});

        if (results) {
            setDocument(resultEditor, results, 'text');
            console.log("pyodideWorker return results: ", results);
        } else if (error) {
            setDocument(resultEditor, error, 'text');
            console.log("pyodideWorker error: ", error);
        }
    } catch (e) {
        console.log(
            `Error in pyodideWorker at ${e.filename}, Line: ${e.lineno}, ${e.message}`,
        );
    }
}

export { validate };