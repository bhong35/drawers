let mysql = require('mysql');
let sqlPassword = require('../config');

let connection = mysql.createConnection({
  host: 'database-1.cxthsdknnl0n.us-east-2.rds.amazonaws.com',
  port: 3306,
  user: 'arwadley',
  password: sqlPassword,
  database: 'ReviewsAndDrawers'
});

let retrieveItem = (itemId, callback) => {
  connection.query('SELECT * FROM items WHERE id=?', [itemId], function(error, result) {
    callback(error, result);
  });
};

let retrieveReviews = (itemId, callback) => {
  connection.query('SELECT * FROM reviews WHERE product_id=?', itemId, function(error, result) {
    callback(error, result);
  });
};

let updateHelpfulReviews = (reviewId, yesCount, noCount, callback) => {
  connection.query(
    'UPDATE reviews SET review_helpful_yes=?, review_helpful_no=? WHERE review_id=?',
    [yesCount, noCount, reviewId],
    function(error, result) {
      if (error) {
        callback(error, null);
      } else {
        callback(error, result);
      }
    }
  );
};

let writeNewReview = (
  productId,
  overallRating,
  reviewTitle,
  reviewText,
  username,
  valueForMoney,
  productQuality,
  productAppearance,
  easeOfAssembly,
  worksAsExpected,
  recommended,
  date,
  callback
) => {
  connection.query(
    'INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0, 0, ?);',
    [
      productId,
      username,
      date,
      reviewTitle,
      reviewText,
      overallRating,
      valueForMoney,
      productQuality,
      productAppearance,
      easeOfAssembly,
      worksAsExpected,
      recommended
    ],
    function(error, result) {
      if (error) {
        callback(error, null);
      } else {
        callback(error, result);
      }
    }
  );
};

module.exports.connection = connection;
module.exports.retrieveItem = retrieveItem;
module.exports.retrieveReviews = retrieveReviews;
module.exports.updateHelpfulReviews = updateHelpfulReviews;
module.exports.writeNewReview = writeNewReview;
