const cds = require('@sap/cds');
const odatav2adapterproxy = require('@sap/cds-odata-v2-adapter-proxy');

cds.on('bootstrap', (app) => {
    //Adapter for OData V2
    app.use(odatav2adapterproxy());
});

module.exports = cds.server;
