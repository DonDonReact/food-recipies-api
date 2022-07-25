var express = require("express");
var router = express.Router();
const pool = require("../utils/db_helper");

router.get("/", function (req, res, next) {
  item_id = req.query.item_id;
  pool.query(
    "SELECT * FROM details WHERE item_id=?",
    [item_id],
    (error, result) => {
      if (error) {
        console.error(error);
        res.status(404).send({ error: error });
      }

      res.send(result);
    }
  );
});
module.exports = router;
