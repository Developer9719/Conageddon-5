var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('purchase', { 
    pageName: 'purchase',
    title: 'PURCHASE TICKETS' 
  });
});

module.exports = router;
