import { asyncRun } from "./schematron-validatation-worker-creation.js";

async function schematronValidation(xml, schematron, dirHandle, baseUri) {
    try {
        setDocument(resultEditor, 'Performing Schematron validation...', 'text');

        const { results, error } = await asyncRun({xml, schematron, dirHandle, baseUri});

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

export { schematronValidation };
