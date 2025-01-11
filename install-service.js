const Service = require('node-windows').Service;
const svc = new Service({
    name: 'ChromaSDK Proxy Server',
    description: 'Proxy server for ChromaSDK',
    script: require('path').join(__dirname, 'proxy-server.js')
});

svc.on('install', () => {
    svc.start();
});

svc.install();