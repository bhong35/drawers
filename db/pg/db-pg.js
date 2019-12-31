const { Pool, Client} = require('pg');
const config = require('../config');

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'test1',
    password: config.password.postgres,
    port: 5432
});

pool.connect(()=> {
    console.log("connected to pool");
});

const addItem = (box, description, size, instructions, environment, package) => {
    return new Promise ((reject, resolve) => {
        pool.query(`INSERT INTO items (box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES ('${box}', '${description}', '${size}', '${instructions}', '${environment}', '${package}');`, 
        (err, res) => {
            if (err) {
                reject(err);
            } else {
                resolve(res);
            }
        });
    })
    // .then(pool.end());
};

const addReview = (
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
    recommended) => {
    return new Promise ((reject, resolve) => {
        pool.query(`INSERT INTO test2 (
    product_id,
    user_name, 
    posted_date, 
    review_title, 
    review_text,
    overall_rating, 
    product_value_for_money,
    product_quality,
    product_appearance, 
    product_ease_of_assembly, 
    product_works_as_expected,
    review_helpful_yes, 
    review_helpful_no,
    product_recommended) VALUES (
    '${productId}', 
    '${username}', 
    '${postedDate}', 
    '${reviewTitle}', 
    '${reviewText}', 
    '${overallRating}',
    '${valueForMoney}',
    '${productQuality}',
    '${productAppearance}',
    '${easeOfAssembly}',
    '${worksAsExpected}',
    '${helpfulYes}',
    '${helpfulNo}',
    '${recommended}');`, 
        (err, res) => {
            if (err) {
                reject(err);
            } else {
                resolve(res);
            }
        });
    })
    // .then(pool.end());
};

const retrieveItem = (itemId) => {
    return new Promise ((reject, resolve) => {
        pool.query(`SELECT * FROM items WHERE id=${itemId}`, (err, res) => {
            if (err) reject(err);
            else resolve(res);
        })
    })
};

const retrieveReviews = (itemId => {
    return new Promise ((reject, resolve) => {
        pool.query(`SELECT * FROM reviews WHERE product_id=${itemId}`, (err, res) => {
            if (err) reject(err);
            else resolve(res);
        })
    })
});

module.exports = { addItem, addReview, retrieveItem, retrieveReviews };

// const client = new Client({
//     user: 'postgres',
//     host: 'localhost',
//     database: 'test1',
//     password: 'password',
//     port: 5432
// });

// client.connect(()=> {
//     console.log("connected CLIENT!");
// });

// const query = {
//     text: 'INSERT INTO reviews () VALUES ()',
//     values: [],
// }

// // seed db
// const seed = () => {
//     return new Promise((resolve, reject) => {
//         client.query(query, (error, result) => {
//             if (error) {
//                 reject(error);
//             } else {
//                 resolve(result);
//             }
//         });
//     })
// }

// module.exports = { seed };

// const res = await client.query('SELECT $1:: text as message', ['Hello World']);
// console.log(res.rows[0].message); // Hello World
// await client.end();