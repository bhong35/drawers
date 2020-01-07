// * Helper functions for seeding dbs with 10 million random entries in MongoDB and PostgreSQL

const faker = require('faker');

// ! items table
const itemsHeaders = () => {
    return "id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details";
}

// ! reviews table
const reviewsHeaders = () => {
    return "review_id, product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended";
}

// * items = description, instructions
// * reviews = text
const fakerParagraph = () => {
    return faker.lorem.paragraph();
};

// * items = box, size
// * reviews = productID, value
const fakerNumber = () => {
    return faker.random.number();
}

// * items = package
// * reviews = appearance
const fakerSentence = () => {
    return faker.lorem.sentence();
};

// * items = environment
const fakerWords = () => {
    return faker.lorem.words();
}

// * reviews = title, quality, ease, works, helpful
const fakerWord = () => {
    return faker.random.word();
}

// * reviews = username
const fakerUserName = () => {
    return faker.internet.userName();
}

// * reviews = date
const fakerDate = () => {
    return faker.date.past();
}

// * reviews = rating
const fakerRating = () => {
    return Math.ceil(Math.random() * 6);
}

module.exports = { 
    itemsHeaders,
    reviewsHeaders,
    fakerParagraph,
    fakerNumber,
    fakerSentence,
    fakerWords,
    fakerWord,
    fakerUserName,
    fakerDate,
    fakerRating
};