var http = require('http');

http.createServer(function (req, res) {
    console.log('Reseived RQ from ' + req.connection.remoteAddress);
    
    res.writeHead(200, {'Content-Type' : 'text/plain'});
    res.end('Hello World from node.js');
    
}).listen(3000);

console.log('Server is up and running');
