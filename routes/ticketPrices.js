var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('ticketPrices', { 
    pageName: 'ticketPrices',
    title: 'TICKET PRICES' 
  });
});

module.exports = router;
