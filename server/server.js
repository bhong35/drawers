const newrelic = require('newrelic');
const express = require('express');
const app = express();
const cors = require('cors');
const db = require('../db/mysql/db.js');
const pg = require ('../db/pg/db-pg.js');
const helper = require('../data/helper');

// * connection string for original MySQL DB
// db.connection.connect(() => console.log('connected to db'));

app.use(cors());
app.use(express.json());
app.use(express.static(__dirname + '/../dist'));
app.use('/bundle', express.static(__dirname + '/../dist/bundle.js'));
app.use('/css', express.static(__dirname + '/../dist/stylesheet.css'));

// ! ----- PostgreSQL -----

app.get('/pg/item', (req, res) => {
    let itemId = Math.floor(Math.random() * 9000000);
    return pg.retrieveItem(itemId)
    .then(result => {
        res.send(result)
        // res.status(200).send(result)
    })
    .catch(error => {
        res.send(error)
        // res.status(404).send(error);
    })
});

// app.get('/pg/item/:id', (req, res) => {
//     let itemId = req.query.itemId;
//     return pg.retrieveItem(itemId)
//     .then(result => {
//         res.status(200).send(result)
//     })
//     .catch(error => {
//         res.status(404).send(error);
//     })
// });

// * generates random product ID to test performance throughout depth of db
app.get('/pg/reviews', (req, res) => {
    let itemId = Math.floor(Math.random() * 10000000);
    return pg.retrieveReviews(itemId)
    .then(result => {
        res.status(200).send(result)
    })
    .catch(error => {
        res.status(404).send(error);
    })
});

// * add random entries into items table using faker generator
app.post('/pg/items', (req, res) => {
    let box = helper.fakerNumber();
    let description = helper.fakerSentence();
    let size = helper.fakerNumber();
    let instructions = helper.fakerSentence();
    let environment = helper.fakerSentence();
    let package = helper.fakerSentence();
    console.log("log1!!");
    return pg.addItem(box, description, size, instructions, environment, package)
    .then((status, body) => {
        res.status(status).send(body);
    })
    .catch(error => {
        res.send(error);
    });
});

// * add random entries into reviews table using faker generator
app.post('/pg/reviews', (req, res) => {
    let productId = helper.fakerNumber();
    let username = helper.fakerUserName();
    let postedDate = helper.fakerDate();
    let reviewTitle = helper.fakerWord();
    let reviewText = helper.fakerParagraph();
    let overallRating = helper.fakerRating();
    let valueForMoney = helper.fakerNumber();
    let productQuality = helper.fakerNumber();
    let productAppearance = helper.fakerNumber();
    let easeOfAssembly = helper.fakerNumber();
    let worksAsExpected = helper.fakerNumber();
    let helpfulYes = helper.fakerNumber();
    let helpfulNo = helper.fakerNumber();
    let recommended = helper.fakerNumber();
    console.log("log2!!");
    return pg.addReview(
        productId, 
        username, 
        postedDate, 
        reviewTitle, 
        reviewText, 
        overallRating, 
        valueForMoney,
        productQuality,
        productAppearance,
        easeOfAssembly,
        worksAsExpected,
        helpfulYes,
        helpfulNo,
        recommended)
    .then((status, body) => {
        res.status(status).send(body);
    })
    .catch(error => {
        res.send(error);
    });
});

// ! ----- MySQL Original Server -----
app.get('/item', (req, res) => {
  let itemId = req.query.itemId;
  db.retrieveItem(itemId, (error, result) => {
    if (error) {
      res.status(404).end();
    } else {
      res.status(200).send(result);
    }
  });
});

app.get('/reviews', (req, res) => {
  let itemId = req.query.itemId;
  db.retrieveReviews(itemId, (error, result) => {
    if (error) {
      res.status(404).send(error);
    } else {
      res.status(200).send(result);
    }
  });
});

app.put('/reviews', (req, res) => {
  db.updateHelpfulReviews(req.body.reviewId, req.body.yesAdd, req.body.noAdd, (error, result) => {
    if (error) {
      res.status(400).end();
    } else {
      res.status(200).send(result);
    }
  });
});

app.post('/reviews', (req, res) => {
  let currentDate = getCurrentDate();
  db.writeNewReview(
    req.body.productId,
    req.body.overallRating,
    req.body.reviewTitle,
    req.body.reviewText,
    req.body.username,
    req.body.valueForMoney,
    req.body.productQuality,
    req.body.productAppearance,
    req.body.easeOfAssembly,
    req.body.worksAsExpected,
    req.body.recommended,
    currentDate, (error, result) => {
      if (error) {
        console.log(error);
        res.status(400).end();
      } else {
        res.status(200).send(result);
      }
    }
  );
});

app.delete('/delete', (req, res) => {
    res.send("hit route delete");
})

let getCurrentDate = () => {
  let currentDate = new Date();
  let year = currentDate.getFullYear();
  let month = currentDate.getMonth();
  let date = currentDate.getDate();
  let output = year + '';
  if (month === 12) {
    month = 1;
  } else {
    month += 1;
  }
  month = month.toString();
  if (month.length === 1) {
    output += '-0' + month;
  } else {
    output += '-' + month;
  }
  date = date.toString();
  if (date.length === 1) {
    output += '-0' + date;
  } else {
    output += '-' + date;
  }
  return output;
};

const port = 3333;
app.listen(port, () => console.log(`listening on port ${port}`));