var request = require('request');
var cheerio = require('cheerio');
var fs = require('fs');

var url = "https://www.reddit.com/r/FixedGearBicycle/";

request(url, function(error, response, body) {
  if(error) {
    console.log("Error: " + error);
  }
  console.log("Loading " + url + "... Status code: " + response.statusCode);

  var $ = cheerio.load(body);

  $('div#siteTable > div.link').each(function( index ) {
    var postTitle = $(this).find('p.title > a.title').text().trim();
    var postScore = $(this).find('div.score.unvoted').text().trim();
    var postUser = $(this).find('a.author').text().trim();

    var json = {
      user: postUser,
      title: postTitle,
      score: postScore
    };

    console.log(json);
    fs.appendFileSync('fixie.json', JSON.stringify(json) + '\n');
  });

});
