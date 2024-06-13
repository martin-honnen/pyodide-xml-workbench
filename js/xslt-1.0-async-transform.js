import { asyncRun } from "./xslt-1.0-transform-worker.js";

async function transform(xml, xslt, dirHandle, baseUri) {
    try {
        const { results, error } = await asyncRun({xml, xslt, dirHandle, baseUri});
        if (results) {
            setDocument(resultEditor, results, 'html');
            if (document.getElementById('render-box').checked) {
                writeResult(frames['current-result-frame'], results);
            }
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

export { transform };