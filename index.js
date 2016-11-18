var express = require('express');
var app = express();
var bodyparser = require('body-parser');

app.use(bodyparser.json());

app.post('/event', function(request, response) {
    console.log("body", request.body.hello)
})

app.listen(3000, function() {
    console.log('Example app listening on port 3000');
});