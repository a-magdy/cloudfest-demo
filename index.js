var http = require('http');
var fs = require('fs');

const port = process.env.PORT || 8000;
http.createServer(function(req, res){
    fs.readFile('home.html',function (err, data){
        res.writeHead(200, {'Content-Type': 'text/html','Content-Length':data.length});
        res.write(data);
        res.end();
    });
}).listen(port);
