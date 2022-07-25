const mysql = require("mysql");

var pool = mysql.createPool({
  host: "db",
  user: "db_user",
  password: "Dondon2020-",
  database: "dondon",
});

module.exports = pool;
