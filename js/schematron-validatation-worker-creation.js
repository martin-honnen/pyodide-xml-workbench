const schematronValidationWorker = new Worker("./js/schematron-validation-worker.js");

const callbacks = {};

schematronValidationWorker.onmessage = (event) => {
    const { id, ...data } = event.data;
    const onSuccess = callbacks[id];
    delete callbacks[id];
    onSuccess(data);
};

const asyncRun = (() => {
    let id = 0; // identify a Promise
    return (context) => {
        // the id could be generated more carefully
        id = (id + 1) % Number.MAX_SAFE_INTEGER;
        return new Promise((onSuccess) => {
            callbacks[id] = onSuccess;
            schematronValidationWorker.postMessage({
                ...context,
                id,
            });
        });
    };
})();

export { asyncRun };
