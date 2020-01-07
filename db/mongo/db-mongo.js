// * MongoDB db connection

const MongoClient = require('mongodb').MongoClient;
const assert = require('assert');
const config = require('..config');

// Connection URL
const url = `mongodb://${config.password.email}:$[password]@$[hostlist]/sdc?authSource=${config.password.mongo}`;

// Use connect method to connect to the Server
MongoClient.connect(url, (err, client) => {
    assert.equal(null, err);
    client.close();
});