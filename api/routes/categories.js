var express = require("express");
var router = express.Router();

const pool = require("../utils/db_helper");

let sql = "SELECT * FROM categories";

router.get("/", function (req, res, next) {
  console.log("in get categories");
  pool.query(sql, (error, result) => {
    if (error) {
      console.error(error);
      res.status(404).send({ error: error });
    }

    res.send({ result: result });
  });
});
module.exports = router;
