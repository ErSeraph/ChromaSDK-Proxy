const http = require('http');
const httpProxy = require('http-proxy');
const proxy = httpProxy.createProxyServer({});
const server = http.createServer((req, res) => {
    const options = {
        target: 'http://localhost:54235',
        changeOrigin: true
    };
    
    proxy.web(req, res, options, (error) => {
        console.error('Error:', error);
        res.writeHead(500, { 'Content-Type': 'text/plain' });
        res.end('Something went wrong.');
    });
});

server.listen(54236, () => {
    console.log('Proxy server listening on port 54236');
});