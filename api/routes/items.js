var express = require("express");
var router = express.Router();

const pool = require("../utils/db_helper");

let sql = "SELECT * FROM items WHERE category_id=?";

router.get("/", function (req, res, next) {
  console.log("in get items");
  category_id = req.query.category_id;
  pool.query(sql, [category_id], (error, result) => {
    if (error) {
      console.error(error);
      res.status(404).send({ error: error });
    }

    res.send({ result: result });
  });
});
module.exports = router;
