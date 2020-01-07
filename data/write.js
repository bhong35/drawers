// * Write files for seeding dbs with 10 million random entries in MongoDB and PostgreSQL

const fs = require('fs');
const path = require('path');
const helper = require ('./helper.js');

let num = 0;
let start = (num * 5000000);
let end = ((num + 1) * 5000000);

// ! items table
const stream = fs.createWriteStream(path.resolve(__dirname, `./items/itemsData${num + 1}.csv`));
stream.once('open', (fd) => {
    stream.write(helper.itemsHeaders() + '\n');
    for (let i = start; i < end; i++) {
        stream.write(`${i}; 
        ${helper.fakerNumber()}; 
        ${helper.fakerSentence()}; 
        ${helper.fakerNumber()}; 
        ${helper.fakerSentence()}; 
        ${helper.fakerSentence()}; 
        ${helper.fakerSentence()}\n`);
    }
    stream.end();
});

// ! reviews table
const stream = fs.createWriteStream(path.resolve(__dirname, `./reviews/reviewsData${num + 1}.csv`));
stream.once('open', (fd) => {
    stream.write(helper.reviewsHeaders() + '\n');
    for (let i = start; i < end; i++) {
        stream.write(
            `${i}; 
            ${helper.fakerNumber()}; 
            ${helper.fakerUserName()}; 
            ${helper.fakerDate()}; 
            ${helper.fakerWord()}; 
            ${helper.fakerParagraph()}; 
            ${helper.fakerRating()}; 
            ${helper.fakerNumber()}; 
            ${helper.fakerNumber()}; 
            ${helper.fakerNumber()}; 
            ${helper.fakerNumber()}; 
            ${helper.fakerNumber()}; 
            ${helper.fakerNumber()}; 
            ${helper.fakerNumber()}; 
            ${helper.fakerNumber()}\n`);
    }
    stream.end();
});

// ! writeFile
let itemsHeader = helper.itemsHeaders() + '\n';
for (let i = start; i <= end; i++) {
    itemsHeader += `${i}, 
    ${helper.fakerNumber()}, 
    ${helper.fakerParagraph()}, 
    ${helper.fakerNumber()}, 
    ${helper.fakerParagraph()}, 
    ${helper.fakerSentence()}, 
    ${helper.fakerParagraph()}\n`;
}

fs.writeFile(itemsFile, itemsHeader, (error) => {
    if(error) {
        console.log(error);
    }
});