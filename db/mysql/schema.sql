DROP DATABASE IF EXISTS ReviewsAndDrawers; 

CREATE DATABASE IF NOT EXISTS ReviewsAndDrawers; 

USE ReviewsAndDrawers; 

SET character_set_client=utf8, character_set_connection=utf8, character_set_database=utf8, character_set_results=utf8, character_set_server=utf8;

CREATE TABLE items (
    id INT PRIMARY KEY, 
    box_number TEXT, 
    product_description TEXT, 
    product_size TEXT,
    care_instructions TEXT, 
    environment_and_materials TEXT, 
    package_details TEXT
); 

CREATE TABLE reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT, 
    product_id INT,
    user_name TEXT, 
    posted_date DATE, 
    review_title TEXT, 
    review_text TEXT,
    overall_rating INT, 
    product_value_for_money INT, 
    product_quality INT, 
    product_appearance INT, 
    product_ease_of_assembly INT, 
    product_works_as_expected INT,
    review_helpful_yes INT, 
    review_helpful_no INT,
    product_recommended TINYINT(1), 
    FOREIGN KEY(product_id) REFERENCES items(id)
);


INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(1, '892.284.34', 
'A highchair makes it easier for small children to sit at the same table as adults, which helps them develop social and eating skills.\nEasy to disassemble and transport.\n
Raised edge prevents spills from ending up on the floor.\nWe know that children\'s skin is extra sensitive, but not to worry. 
This product has been tested, approved and is completely free from substances that may harm your child\'s skin or health.\n
This product is intended for children able to sit up unaided and up to 3 years old or a maximum weight of 33 lbs..\nSafety belt included.', 
'Width: 22 "\nDepth: 24 3/8 " \nHeight: 35 3/8 " \nSeat width: 9 7/8 " \nSeat depth: 8 5/8 " \nSeat height: 21 1/4 "
\nMax. load: 33 lb', null, 'Environment\n Seat shell for high chair:\nNo BPA (Bisphenol A) added.\nHigh chair tray: \nNo BPA (Bisphenol A) added.
\nProduct possible to recycle or use for energy recovery, if available in your community. \nMaterials \nSeat shell for high chair/ high chair tray: 
\nPolypropylene', 'Packages: 3\nANTILOP\nhigh chair tray\nANTILOP\nseat shell for high chair\nANTILOP\nhigh chair leg');
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(2, '803.496.71', 
'You sit comfortably thanks to the restful flexibility of the seat and back.\n
\nDo not use a cleaning agent on the seat shell as the seat shell may be damaged. Use only water for cleaning.\n
\nThis chair has been tested for home use and meets the requirements for durability and safety, set forth in the following standards: EN 12520 and EN 1022.\n
\nDesigner\nCarl Öjerstam', 'Tested for: 243 lb\nWidth: 21 5/8 " \nDepth: 22 "\nHeight: 32 1/4 "\nSeat width: 18 7/8 "Seat depth: 18 1/8 "\nSeat height: 17 3/8 "',
'Wipe dry with a clean cloth.\nFor maximum quality, re-tighten the screws when necessary.', 
'Materials\n
Leg frame:\n    Steel, Chrome plated\nSeat shell:\n    Polycarbonate plastic\nFoot:    Polypropylene\nNut:    Zinc, Chrome plated\nBumpers/ Washers:    Synthetic rubber', 
'Packages: 2\n\nTOBIAS\n\nChair\n\nThis product has multiple packages.'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(3, '492.519.35', 
'In HAVSTEN you sit deep and low with a comfortable resilience thanks to the elastic mesh in the bottom.\n\n
Create an armchair, loveseat, a sofa or a sectional as large as you like.\n\n
You can just shake off water from a light rain, as the cushion cover is water repellent.\n\n
The cushion covers are dope dyed, a process that reduces consumption of water and dyestuff while improving color fastness compared to traditional dyeing techniques.\n\n
The cushion has a longer life because it can be turned over and used on both sides.\n\n
Easy to keep clean since the cushion cover can be removed and washed.\n\n
The firmness of the mesh fabric can be tightened/adjusted with the strap in the back.\n\n
Designer\nAndreas Fredriksson', 'Width: 32 5/8 "\nDepth: 37 "\nHeight: 35 3/8 "\nSeat depth: 24 3/8 "\nSeat height: 16 1/2 "', 
'Cushion cover\n\nBack cushion, outdoor/seat pad, outdoor\n
Machine wash warm, normal cycle.\nDo not bleach.\nTumble dry, low, normal cycle.\nIron low.\nDo not dry clean.
\n\nChair, in/outdoor\n
Storing: If possible, store in a cool dry place indoors. If the furniture is stored outside, cover it with a waterproof cover. After a rain or snowfall, wipe off excess water or snow from flat surfaces. Allow air to circulate to avoid condensation.
\nStore the sofa cushions in a cool, dry place indoors when the season is over, preferably in a storage bag or storage box to protect from dirt and dust. Make sure the cushions are completely dry before storing.
\nClean: Use a mild soapy solution.\nHand wash warm water.\nDo not bleach.\nDo not tumble dry.\nDo not iron.\nDo not dry clean.', 
'Environment\nBack cushion, outdoor/seat pad, outdoor:
\nThe yarn in this product is dope-dyed, a color method for synthetic fibers, which reduces consumption of water and dye while improving color fastness compared to traditional dyeing techniques.
\nNo perfluorinated chemicals (e.g. PFOS, PFOA, PFOSA) are used to make this product water repellent. As perfluorinated chemicals are non-degradable, it’s better for you and the environment to avoid them.
\nPossible to separate for recycling or energy recovery if available in your community.\n\nMaterials\nBack cushion, outdoor\nCushion cover:
\n100% polyester (min. 90% recycled)\nInner fabric:\n100 % polypropylene\nFilling:\n100 % polyester (100% recycled)', 
'Packages: 5\nHAVSTEN\nseat frame, outdoor\n\nHAVSTEN\nseat pad, outdoor\n\nHAVSTEN\nseat and back frame, outdoor\n\nHAVSTEN\nback cushion, outdoor'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(4, '601.317.34', 
'The stool can be stacked, so you can keep several on hand and store them in the same space as one.\n\nSuitable for bar height 35⅜".
\n\nThis bar stool has been tested for home use and meets the requirements for durability and safety, set forth in the following standards: EN 12520 and EN 1022.
\n\nDo not use a cleaning agent on the seat shell as the seat shell may be damaged. Use only water for cleaning.\n\nDesigner\nMarcus Arvonen', 
'Tested for: 220 lb\nWidth: 19 5/8 "\nDepth: 18 7/8 "\nHeight: 35 "\nSeat width: 14 5/8 "\nSeat depth: 15 3/4 "\nSeat height: 26 "', 
'Wipe clean with a water dampened cloth.\n\nFor maximum quality, re-tighten the screws when necessary.', 
'Materials\nLeg frame: Steel, Chrome plated\n\nFeet: Polypropylene\n\nSeat shell: Polycarbonate plastic\n\nBumpers: Polyethylene\n\nInsert: Brass', 
'GLENN\nBar stool\n\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(5, '704.048.75', 
'You can fold the chairs, so they take less space when you are not using them.\n\nFootrest for extra sitting comfort.\n\nThe plastic feet allow the chair to stand evenly and reduces the risk of pressure marks on a soft floor.
\n\nThe built-in safety lock prevents the bar stool from accidentally folding up when you move it.\n\nSuitable for bar height 35⅜\".
\n\nThis bar stool has been tested for home use and meets the requirements for durability and safety, set forth in the following standards: EN 12520 and EN 1022.
\n\nDesigner\nK Hagberg/M Hagberg', 'Tested for: 220 lb\nWidth: 19 5/8 "\nDepth: 17 3/8 "\nHeight: 37 3/8 "\nSeat width: 13 3/8 "
\nSeat depth: 13 3/8 "\nSeat height: 24 3/4 "', 'Wipe clean with a mild soapy solution.\n\nWipe dry with a clean cloth.
\n\nFor maximum quality, re-tighten the screws when necessary.', 'Materials\nSeat and back: Molded layer-glued wood veneer, Laminate (melamine), 
\nEdge: Clear lacquer\nBracket: Reinforced polyamide\nCrank/ Tubular frame/ Footrest: Steel, Epoxy/polyester powder coating
\nProtector: Polypropylene', 'FRANKLIN\nBar stool with backrest, foldable\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(6, '392.077.16', 
'You sit comfortably since the chair is adjustable in height.
\n\nThe safety casters have a pressure-sensitive brake mechanism that keeps the chair in place when you stand up, and releases automatically when you sit down.
\n\nThis product has been developed and tested for domestic use.\n\nRecommended for children 4-12 years of age.
\n\nThe casters are designed for soft floors.
\n\nMay be used with KOLON floor protector.\n\nDesigner\nNicholai Wiig Hansen', 
'Tested for: 110 lb 4 oz\nWidth: 22 7/8 "\nDepth: 22 "\nSeat width: 13 3/4 "\nSeat depth: 12 5/8 "
\nMin. seat height: 14 5/8 "\nMax. seat height: 18 7/8 "', 'Junior seat shell/junior chair frame, swivel
\nWipe clean using a damp cloth and a mild cleaner.\nWipe dry with a clean cloth.', 
'Materials\nJunior seat shell\nMolded plywood, Acrylic paint, Paper, Molded layers of fiberboard
\n\nJunior chair frame, swivel\nCasters/ Casters:\nPolypropylene\n\nStar base/ Seat and back holder:
\n\nSteel, Epoxy/polyester powder coating', 'Packages: 2\nJULES\njunior chair frame, swivel
\n\nJULES\njunior seat shell'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(7, '993.030.36', 
'High-quality density foam will keep the chair comfortable for many years to come.
\n\nYou sit comfortably since the chair is adjustable in height.
\n\nThe safety casters have a pressure-sensitive brake mechanism that keeps the chair in place when you stand up, and releases automatically when you sit down.
\n\nThis product has been developed and tested for domestic use.\n\nComplies with California TB117-2013 flammability requirements.
\n\nMay be used with KOLON floor protector.\n\nThe casters are designed for soft floors.\n\nDesigner\nS Holmbäck/U Nordentoft', 
'Tested for: 243 lb\nWidth: 26 3/4 "\nDepth: 26 3/4 "\nMax. height: 37 "\nSeat width: 19 1/4 "\nSeat depth: 16 7/8 "
\nMin. seat height: 18 1/8 "\nMax. seat height: 22 7/8 "', 'Non-removable cover\nSwivel chair
\nLight stains can be removed with a textile cleaner or a damp sponge and a mild soapy solution.
\nWipe clean with a mild soapy solution.\nWipe dry with a clean cloth.', 
'Materials\nChair frame, swivel\nCasters/ Base cover: Polypropylene\n
Base plate/ Adjustment lever: Steel, Epoxy powder coating
\nStar base center/ Star base leg: Steel, Epoxy/polyester powder coating
\nTube caps: Reinforced polypropylene \n\nSeat shell\nBack foam/ Seat foam: Polyurethane foam.
\nSeat and back frame: Steel, Epoxy powder coating\nSeat and back: Molded eucalyptus plywood\nFabric: 100 %polyester', 
'Packages: 2\n\nÖRFJÄLL\nchair frame, swivel\n\nÖRFJÄLL\nseat shell'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(8, '903.200.97', 
'Handwoven back rest and seat, making each and every GRÖNADAL chair one of a kind.
\n\nMade from rattan and ash, natural materials that age with grace.
\n\nThe transparent woven pattern in the back and seat give the rocking chair an airy look, making it flexible and easy to fit in at home.
\n\n10-year limited warrranty. Read about the terms in the limited warranty brochure.\n\nDesigner\nLisa Hilland', 
'Width: 31 1/2 "\nDepth: 31 7/8 "\nHeight: 33 7/8 "\nSeat width: 18 1/2 "\nSeat depth: 17 3/8 "\nSeat height: 16 1/2 "', 
'Wipe clean using a damp cloth and a mild cleaner.\nWipe dry with a clean cloth.\nThe material can dry out and deteriorate if placed near a heat source.', 
'Materials\nWeaving: Rattan, Clear acrylic lacquer\nRocker/ Backside rail/ Armrest: Solid ash, Clear acrylic lacquer
\nArmrest frame/ Seat frame/ Back frame/ Crossbar: Steel, Epoxy/polyester powder coating', 'GRÖNADAL/nRocking chair\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(9, '290.066.95', 
'You sit comfortably since the chair is adjustable in height.\n\nThe safety casters have a pressure-sensitive brake mechanism that keeps the chair in place when you stand up, and releases automatically when you sit down.
\n\nThis product has been developed and tested for domestic use.\n\nMay be used with KOLON floor protector.\n\nDesigner\nEva Lilja Löwenhielm/IKEA of Sweden', 
'Tested for: 243 lb\nWidth: 29 1/8 "\nDepth: 29 1/8 "\nSeat width: 17 3/4 "\nSeat depth: 15 3/8 "\nMin. seat height: 16 1/2 "
\nMax. seat height: 21 1/4 "', 'Seat shell\nWipe clean with a mild soapy solution.\nWipe dry with a clean cloth.', 
'Materials\nSeat shell\n Molded plywood, Birch veneer, Stain, Clear acrylic lacquer
\n\nChair frame, swivelCastor/ Cover: \nPolypropylene\n\nStar base center/ Star base leg/ Base plate:
\nSteel, Epoxy/polyester powder coating\n\nTube caps:\nReinforced polypropylene', 
'Packages: 2\n\nSPORREN\nchair frame, swivel\n\nVÅGSBERG\nseat shell'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(10, '702.886.30', 
'The dampers allow you to stack the chairs.\n\nThe self-adjusting plastic feet adds stability to the chair.
\n\nCan be hung with the armrests on a table top for easy cleaning.\n\nYou sit comfortably thanks to the armrests.
\n\nDurable and hard-wearing. Meets the requirements on furniture for public use.
\n\nThis chair has been tested for public use and meets the requirements for safety, durability and stability set forth in the following standards: EN 16139-Level 1 and ANSI/BIFMA x5.1
\n\nTo be completed with LEIFARNE or SVENBERTIL seat shell.\n\nDesigner\nMia Lagerman', 
'Tested for: 243 lb\nWidth: 20 7/8 "\nDepth: 19 5/8 "\nHeight: 25 5/8 "\nSeat height: 18 1/8 "', 
'Wipe clean with a mild soapy solution.\n\nWipe dry with a clean cloth.\n\nFor maximum quality, re-tighten the screws when necessary.', 
'Environment\nThe material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.
\n\nMaterials\nFrame:\nSteel, Chrome plated\n\nArmrest cover:\nSynthetic rubber', 
'DIETMAR\nUnderframe for armchair\n\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(11,
'003.308.16', "We know that children's skin is extra sensitive, but not to worry. \nThis product has been tested, approved and is completely free from substances that may harm your child's skin or health.
\nRaised edge prevents spills from ending up on the floor.\nThe smooth surface has no nooks or corners which are difficult to reach, making the chair easy to clean.
\n\nDesigner\nJ Fritzdorf/J Feldman/J Hedberg", 'Width: 17 3/8 "\nDepth: 16 1/2 "\nThickness: 1 5/8 "', 
'Wipe clean with a mild soapy solution.\n\nWipe dry with a clean cloth.', 'Environment\nNo BPA (Bisphenol A) added.
\n\nMaterials\nPolypropylene', 'LANGUR\nHigh chair tray\n\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(12, 
'502.111.04', 'Easy to bring home since the whole dining set is packed in one box.
\n\nThe wood expression and design of the backrest bring a traditional look to the room.
\n\nEnhance the comfort by adding soft chair pads that fit the seat perfectly.\n\nPine ages beautifully as the color deepens and becomes richer over time.
\n\nDurable solid wood and antique color finish will outlast many years of use.
\n\nWe have tested it for you! The table’s surface is resistant to liquids, food stains, oil, heat, scratches and bumps, while its construction is stable, strong and durable to withstand years of daily use.
\n\nSeats 4.\n\nRecommended for indoor use only.\n\nFor increased stability, re-tighten the screws about two weeks after assembly and when necessary.
\n\nDesigner\nCarina Bengs', 'Table length: 46 1/2 "\nTable width: 29 1/8 "\nTable height: 29 1/8 "\nSeat width: 16 1/8 "
\nSeat depth: 16 1/8 "\nSeat height: 17 3/8 "', 'Wipe clean using a damp cloth and a mild cleaner.\nWipe dry with a clean cloth.', 
'Environment\n100% renewable material. (Fixtures excluded)
\n\nWe have clear requirements for all the wood we use, including a ban on illegally harvested wood. By 2020, we want all our wood to come from more sustainable sources, defined as certified or recycled.
\n\nProduct possible to recycle or use for energy recovery, if available in your community.\n\nMaterials\nSolid pine, Stain, Clear acrylic lacquer',
'JOKKMOKK\nTable and 4 chairs\n\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(13,
'002.110.88', 'Solid wood is a durable natural material.\n\nFor increased stability, re-tighten the screws about two weeks after assembly and when necessary.
\n\nMay be completed with FIXA self-adhesive floor protectors to protect the underlying surface against wear.
\n\nThis chair has been tested for home use and meets the requirements for durability and safety, set forth in the following standards: EN 12520 and EN 1022.
\n\nDesigner\nIKEA of Sweden', 'Tested for: 243 lb\nWidth: 16 1/2 "\nDepth: 19 1/4 "\nHeight: 35 3/8 "\nSeat width: 14 1/8 "
\nSeat depth: 15 3/8 "\nSeat height: 17 3/4 "', 'Wipe clean with a mild soapy solution.\n\nWipe dry with a clean cloth.
\n\nFor maximum quality, re-tighten the screws when necessary.', 'Materials\nSolid pine, Stain, Clear acrylic lacquer', 
'STEFAN\nChair\n\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(14,
'804.343.58', "Easy to assemble without tools or screws.\n\nYou sit comfortably thanks to the chair's shaped back and seat.
\n\nDesigner\nCarl Öjerstam", 'Tested for: 220 lb\nWidth: 22 7/8 "\nDepth: 22 "\nHeight: 33 1/2 "\nSeat width: 17 3/8 "
\nSeat depth: 17 3/8 "\nSeat height: 17 3/4 "', 'Do not wash.\n\nDo not bleach.\n\nDo not tumble dry.
\n\nDo not iron.\n\nDo not dry clean.', 'Materials\nTotal composition:
\n65 % polyester, 35 % cotton\n\nFoot:\nPolypropylene\n\nSeat frame:\nReinforced polypropylene\n\nSeat shell:
\nPolyester fiber fill, Non-woven polyester fabric\n\nSeat cushion:\nPolypropylene, High resilient polyurethane foam (cold foam).
\n\nLeg:\nSolid ash, Tinted clear acrylic lacquer', 'BALTSAR\nChair\n\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(15,
'704.531.25', 'You sit comfortably thanks to the high back and seat with polyester wadding.\n\nThe chair legs are made of solid wood, which is a durable natural material.
\n\nMachine washable cover; easy to keep clean.\n\nFor increased stability, re-tighten the screws about two weeks after assembly and when necessary.
\n\nMay be completed with FIXA stick-on floor protectors to protect the underlying surface against wear.\n\nDesigner\nIKEA of Sweden', 
'Tested for: 243 lb\nWidth: 20 1/8 "\nDepth: 22 7/8 "\nHeight: 37 3/4 "\nSeat width: 20 1/8 "\nSeat depth: 15 3/4 "\n Seat height: 18 7/8 "', 
'Frame\nWipe dry with a clean cloth.\n\nCover\nMachine wash warm, normal cycle.\nDo not bleach.
\nDo not tumble dry.\nIron medium temperature, max 300°F/150°C.\nDo not dry clean.', 
'Environment\nWe have clear requirements for all the wood we use, including a ban on illegally harvested wood. By 2020, we want all our wood to come from more sustainable sources, defined as certified or recycled.
\n\nMaterials\nTotal composition/ Cover:\n100 % polyester\n\nFrame:\nSolid eucalyptus wood, Stain, Clear acrylic lacquer
\n\nSeat:\nFiberboard, Polyurethane foam., Polyester wadding\n\nBack:\n100% recycled solid cardboard, Polyurethane foam., Polyester wadding
\n\nLining:\nNon-woven polypropylene', 'HARRY\nChair\n\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(16,
'101.356.59', 'The stool can be stacked, so you can keep several on hand and store them in the same space as one.
\n\nThis stool has been tested for home use and meets the requirements for durability and safety, set forth in the following standards: EN 12520 and EN 1022.
\n\nDesigner\nOla Wihlborg', 'Tested for: 220 lb\nSeat diameter: 12 5/8 "\nWidth: 15 3/4 "\nSeat height: 17 3/4 "', 
'Wipe clean with a mild soapy solution.\nWipe dry with a clean cloth.\nFor maximum quality, re-tighten the screws when necessary.', 
'Materials\nSeat/ Foot:\nPolypropylene\n\nLeg:\nSteel, Epoxy powder coating', 'MARIUS\nStool\n\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(17,
'092.195.27', "You can stack the chairs, so they take less space when you're not using them.
\n\nThe self-adjusting plastic feet adds stability to the chair.\n\nFor increased stability, re-tighten the screws about two weeks after assembly and when necessary.
\n\nDesigner\nIKEA of Sweden", 'Tested for: 220 lb\nWidth: 19 1/4 "\nDepth: 20 1/2 "\nHeight: 33 7/8 "\nSeat width: 15 "
\nSeat depth: 15 "\nSeat height: 17 3/4 "', 'Seat shell/chair frame\nWipe dry with a clean cloth.
\n\nChair\nWipe clean using a damp cloth and a mild cleaner.', 'Materials\nSeat shell
\nMolded layer-glued wood veneer, Laminate, Clear acrylic lacquer\n\nChair frame\nSteel, Epoxy/polyester powder coating', 
'Packages: 2\n\nMARTIN\nseat shell\n\nMARTIN\nchair frame'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(18,
'603.882.58', '10-year Limited Warranty. Read about the terms in the Limited Warranty brochure.
\n\nChanging positions between sitting and standing helps you move your body so you both feel and work better.
\n\nGives an active sitting position, which improves your posture.\n\nThe leather ages beautifully and acquires a nice patina over time.
\n\nComplies with California TB117-2013 flammability requirements.
\n\nThis product has been tested for public use and meets the requirements for safety and durability set forth in the following standards: EN 16139 and ANSI/BIFMA X5.1.
\n\nComplies with California TB117-2013 flammability requirements.\n\nDesigner\nP Süssmann/J Karlsson', 
'Tested for: 243 lb\nSeat diameter: 15 3/8 "\nWidth: 26 "\nHeight: 31 1/2 "\nSeat width: 15 3/8 "
\nSeat depth: 15 3/8 "\nMin. seat height: 26 "\nMax. seat height: 31 1/2 "', 'Wipe clean with a water dampened cloth.', 
'Materials\nSeat:\nMolded eucalyptus plywood\n\nSeat foam:\nHigh resilient polyurethane foam (cold foam).
\n\nCover, underside:\nNon-woven polypropylene
\n\nMechanism/ Gas cylinder/ Foot ring/ Star base leg:\nSteel, Epoxy powder coating
\n\nLeg connector:\nReinforced polyamide\n\nFeet:\nSynthetic rubber\n\nMain parts:
\nDyed through top-grain leather with a treated, embossed and pigmented surface', 'TROLLBERGET\nSit/stand support\n\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(19,
'448.811.00', 'Protects flooring against wear and dirt.\n\nSuitable for most types of floors and flat-woven rugs. Not suitable for cork floors or heated wooden floors.
\n\nIf the floor protector is left lying on the floor for a long period a vacuum may form and cause damage to your floor. Therefore, lift the floor protector at regular intervals for ventilation.
\n\nDesigner\nIKEA of Sweden', 'Length: 39 3/8 "\nWidth: 47 1/4 "\nThickness: 1/8 "', 
'Wipe clean with a soft cloth dampened with water and a mild dish detergent or soap, if necessary.\nWipe dry with a clean cloth.
\nIf the floor protector is left lying on the floor for a long period a vacuum may form and cause damage to your floor. 
\nTherefore, lift the floor protector at regular intervals for ventilation.', 
'Environment\nProduct possible to recycle or use for energy recovery, if available in your community.
\n\nMaterials\nPET plastic, Polyurethane plastic', 'KOLON\nFloor protector\n\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(20,
'903.078.40', 'Hook and loop fasteners keep the chair pad in place.\n\nThe chair cushion has two identical sides so it can be turned over for even wear.
\n\nMachine washable for easy care.\n\nFits KAUSTBY and INGOLF chairs.\n\nDesigner\nIKEA of Sweden', 
'Min. width: 14 "\nMax. width: 16 "\nDepth: 15 "\nThickness: 3 "\nFilling weight: 12 oz\nTotal weight: 16 oz', 
'Machine wash warm, normal cycle.\nDo not bleach.\nTumble dry, low, normal cycle.\nDo not iron.\nDo not dry clean.', 
'Environment\nRenewable material (cotton).\nTo lower our environmental impact this product is offered without any packaging.
\n\nMaterials\nInterliner:\n100 % polypropylene\n\nFilling material:\n100 % polyester - hollow fiber (100% recycled)
\n\nOuter fabric:\n100 % cotton', 'MALINDA\nChair pad\n\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(21,
'902.579.58', 'The bed base can be placed at two different heights.\n\nOne crib side can be removed when the child is big enough to climb into/out of the crib.
\n\nYour baby will sleep both safely and comfortably as the durable materials in the crib base have been tested to ensure they give their body the support it needs.
\n\nThe crib base is well ventilated for good air circulation which gives your child a pleasant sleeping climate.
\n\nMattress and bedlinens are sold separately.\n\nConversion kit included.
\n\nFor your child\'s safety, use a 27½x52\" crib mattress with our cribs.\n\nComplies with US standard 16 CFR 1219.
\n\nDesigner\nJ Asshoff/H Brogård', 'Length: 53 1/2 "\nWidth: 29 1/2 "\nHeight: 43 3/4 "\nBed width: 27 1/2 
\n"Bed length: 52 "\nMax. load: 50 lb', 'Wipe clean using a damp cloth and a mild cleaner. \nWipe clean with a dry cloth.', 
'Environment\nProduct possible to recycle or use for energy recovery, if available in your community.
\nRenewable material (wood).\n\nMaterials\nFabric:\n100 % nylon\n\nHead/footboard/ Bottom panel/ Drawer bottom/ Drawer front:
\nFiberboard, Acrylic paint\n\nBedside/ Spindles/ Bed rail/ Bed base frame/ Knob:\nSolid beech, Acrylic paint
\n\nDrawer back/ Drawer side/ Drawer rail/ Partition:\nSolid beech', 'Packages: 2\n\nGONATT\nCrib\n\nThis product has multiple packages.'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(22,
'392.414.28', 'Ample storage space is hidden neatly under the bed in 6 large drawers. Perfect for storing quilts, pillows and bed linen.
\n\nSoft-closing drawers run smoothly, slowly and silently.
\n\nStorage in the headboard saves space and makes it easier to access boxes or drawers under the bed; and it’s easier to vacuum too.
\n\nThe soft felt pad absorbs sound, protects from scratches and keeps small items in place.
\n\nYou can choose where to position the boxes and shelves since they easily slot into the headboard’s grooves.
\n\nYou can hide cables for lamps and chargers by feeding them through the holes at the back of the shelf.
\n\nYou decide the height of the headboard since it needs to be mounted to the wall.
\n\nNORDLI headboard is assembled and mounted on the wall in just a few steps.\n\nEasy to bring home since the headboard is divided into two pieces.
\n\nIncludes: 2 shelves (12x10⅝x4") and 2 boxes (9½x4x4").\n\nDesigner\nOla Wihlborg', 
'Height of drawer (inside): 6 1/4 "\nLength: 79 1/2 "\nWidth: 107 7/8 "\nHeight: 11 3/4 "\nDrawer width (inside): 22 7/8 "
\nDrawer depth (inside): 20 1/8 "\nHeadboard height: 44 7/8 "\nMattress length: 78 3/4 "\nMattress width: 76 "', 
'Bed frame with storage/headboard\nWipe clean using a damp cloth and a mild cleaner.\nWipe dry with a clean cloth.', 
'Environment\nBed frame with storage/headboard:\nAt least 80% (weight) of this product is made of wood, a renewable material.
\n\nMaterials\nBed frame with storage\nTop frame/ Drawer front/ Head/footboard:\nFiberboard, Printed acrylic paint\n\nBed base slats:
\nSolid pine\n\nBoard on frame:\nParticleboard and fiberboard with honeycomb paper filling., ABS plastic, Acrylic paint
\n\nRail:\nSolid wood\n\nHeadboard\nPanel:\nParticleboard, Acrylic paint, Plastic edging\n\nConnection/ Rail:
\nFiberboard, Acrylic paint\n\nShelf:\nSteel, Epoxy/polyester powder coating', 'Packages: 7\n\nNORDLI\nbed frame with storage
\nThis product has multiple packages.\n\nNORDLI\nheadboard\nThis product has multiple packages.'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(23,
'592.688.98', 'Brass-colored details on the headboard, footboard and legs give a unique twist to this classic design.
\n\nThe powder-coated steel frame is strong, sturdy and easy to maintain.
\n\nYou can sit up comfortably in bed thanks to the high headboard – just prop some pillows behind your back and you will have a comfortable place to read or watch TV.
\n\nThere’s plenty of space under the bed for storage boxes – great for stowing extra quilts and sheets.
\n\nYou can choose the mattress comfort that’s best for you – the high headboard and footboard work well with mattresses of different thicknesses.
\n\nThe high footboard keeps bed textiles from falling onto the floor while you sleep.
\n\nWhether you prefer bold or romantic, this versatile bed frame will look great with your choice of textiles and bedroom furniture.
\n\nThe price for this combination includes SKORVA midbeam, but it is a separate product which you pick from its own shelf at the store. If you buy the bed via the website, SKORVA midbeam is included in the delivery.
\n\nSlatted bed base and mattress sold separately.\n\nDesigner\nIKEA of Sweden/Paulin Machado', 'Length: 78 "\nWidth: 56 1/4 "
\nHeight: 55 1/8 "\nFootboard height: 29 1/8 "\nHeadboard height: 55 1/8 "\nHeight under furniture: 9 7/8 "
\nMattress length: 74 3/8 "\nMattress width: 53 1/8 "', 'Bed sides/center support beam\nWipe clean using a damp cloth and a mild cleaner.
\nWipe dry with a clean cloth.', 'Materials\nHead/footboards\nMain parts:\nSteel, Steel, Epoxy/polyester powder coating
\n\nFeet:\nPolypropylene\n\nBed sides\nSteel, Epoxy/polyester powder coating\n\nCenter support beam\nGalvanized steel', 
'Packages: 3\nSAGSTUA\nhead/footboards\n\nSAGSTUA\nbed sides\n\nSKORVA\ncenter support beam'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(24,
'992.561.72', 'At first glance, it looks like a classic upholstered bed. But beneath the surface, there’s a big secret: storage space. Perfect for bed storage boxes to store extra comforters and pillows.
\n\nThe price for this combination includes SKORVA midbeam, but it is a separate product which you pick from its own shelf at the store. If you buy the bed via the website, SKORVA midbeam is included in the delivery.
\n\nMust be completed with SKORVA center support beam.\n\nDesigner\nIKEA of Sweden/Ola Wihlborg', 
'Length: 82 1/4 "\nWidth: 70 7/8 "\nHeadboard height: 53 1/8 "\nHeight under furniture: 7 7/8 "\nMattress length: 78 3/4 "\nMattress width: 60 1/4 "', null,
'Materials\nBed frame cover\n53 % linen, 47 % viscose/rayon
\n\nBed frame\nHeadboard:\nPolyester wadding, Polyester wadding, Polyurethane foam 1.7 lb/cu.ft., Plywood, Solid beech, Solid pine, Fiberboard
\n\nSide panel/ Front:\nPolyester wadding, Polyester wadding, Plywood\n\nMetal parts/ Corner fitting:\nSteel
\n\nCenter support beam\nGalvanized steel', 'Packages: 4\n\nGODFJORD\nbed frame cover\n\nHELLEFJORD\nbed frame\nThis product has multiple packages.
\n\nSKORVA\ncenter support beam'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(25,
'792.411.86', 'This classic bed frame will look great with your choice of textiles and bedroom furniture. You can even complete the look with other products from the SONGESAND series.
\n\nAmple storage space is hidden neatly under the bed in 4 large drawers. Perfect for storing quilts, pillows and bed linen.
\n\nSONGESAND bed storage boxes work perfectly with SONGESAND bed frame. They fit neatly into the space under the bed and will be flush against sides.
\n\nThe storage boxes are easy to roll out and in thanks to the castors on the base.\n\nYou can separate your linens and quilts since the combination includes one narrow and one wide storage box.
\n\nAdjustable bed sides allow you to use mattresses of different thicknesses.
\n\nThe price for this combination includes SKORVA midbeam, but it is a separate product which you pick from its own shelf at the store. If you buy the bed via the website, SKORVA midbeam is included in the delivery.
\n\nMattress and bedlinens are sold separately.\n\nCoordinates with other furniture in the SONGESAND series.\n\nDesigner\nIKEA of Sweden', 
'Height of drawer (inside): 5 1/2 "\nLength: 77 1/8 "\nWidth: 57 7/8 "\nHeight: 37 3/8 "\nDrawer width (inside): 22 "\nDrawer depth (inside): 25 1/4 "
\nFootboard height: 16 1/8 "\nHeadboard height: 37 3/8 "\nMattress length: 74 3/8 "\nMattress width: 53 1/8 "', 
'Bed frame/underbed storage box, set of 2/center support beam\nWipe clean using a damp cloth and a mild cleaner.\nWipe dry with a clean cloth.', 
'Materials\nBed frame\nLeg:\nFiberboard, Paper foil, ABS plastic\n\nBed end filling/ Rail/ Bedside:\nParticleboard, Paper foil, Plastic edging
\n\nTop rail:\nFiberboard, Paper foil, Plastic edging\n\nUnderbed storage box, set of 2\nDrawer front/ Drawer back/ Drawer sides/ Partition/ Rail:
\nParticleboard, Paper foil, Plastic edging\n\nDrawer bottom:\nFiberboard, Paint, Paper foil\n\nCenter support beam\nGalvanized steel', 
'Packages: 5\n\nSONGESAND\nunderbed storage box, set of 2\n\nSONGESAND\nbed frame\n\nSKORVA\ncenter support beam'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(26,
'392.881.90', 'May be completed with DELAKTIG floor lamp.\n\nSpecially adapted slat is included. Complete with mattress of choice, min. height 7⅛".
\n\nThe price for this combination includes SKORVA midbeam, but it is a separate product which you pick from its own shelf at the store. If you buy the bed via the website, SKORVA midbeam is included in the delivery.
\n\nDesigner\nTom Dixon/IKEA of Sweden', 'Length: 81 1/8 "\nWidth: 77 1/2 "\nHeight: 39 "', 'Headrest\nBed frame/headboard/2 side tables
\n\nWipe clean regularly with a cloth dampened in a mild cleaner.\nVacuum clean.\nWipe dry with a clean cloth.\nThe material can dry out and deteriorate if placed near a heat source.
\nWipe clean using a damp cloth and a mild cleaner.\nWipe dry with a clean cloth.', 'Environment\nBed frame:\nAt least 50% of aluminum content of this product is made from recycled aluminum.
\n\nMaterials\nBed frame\nFrame/ Leg:\nAluminum, Anodized\n\nPlastic stopper:\nSynthetic rubber, Polyamide\n\nLayer glued slats:\nBeech veneer, Birch veneer, Adhesive resin as coating
\n\nRibbon:\n100 % polyester\n\nHeadboard\nPoplar plywood, Rattan, Clear acrylic lacquer\n\nFixture for headboard\nAluminum, Anodized\n\nCenter support beam
\nGalvanized steel\n\nSide table for frame\nTable top:\nMolded layer-glued wood veneer, Laminate (melamine)
\n\nEdge:\nStain, Clear acrylic lacquer\n\nBracket:\nAluminum, Anodized', 'Packages: 7\n\nDELAKTIG\nside table for frame\n\nDELAKTIG\nbed frame
\n\nDELAKTIG\nheadboard\n\nDELAKTIG\nfixture for headboard\n\nSKORVA\ncenter support beam'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(27,
'092.752.07', 'Practical storage for an extra pillow, comforter or bedspread.\n\nMade of solid wood, which is a durable and warm natural material.
\n\nAdjustable bed sides allow you to use mattresses of different thicknesses.\n\nThe 4 large drawers give you an extra storage space under the bed.
\n\nCoordinates with other furniture in the HEMNES series.\n\nMattress and bedlinens are sold separately.
\n\nThe price for this combination includes SKORVA midbeam, but it is a separate product which you pick from its own shelf at the store. If you buy the bed via the website, SKORVA midbeam is included in the delivery.
\n\nDesigner\nIKEA of Sweden', 'Length: 83 7/8 "\nWidth: 65 3/4 "\nFootboard height: 26 "\nHeadboard height: 47 1/4 "\nMattress length: 79 1/2 "\nMattress width: 59 7/8 "', 
'Bed frame/underbed storage box, set of 2/center support beam\nWipe clean using a damp cloth and a mild cleaner.\nWipe dry with a clean cloth.', 
'Environment\nSlatted bed base, adjustable:\nAt least 50% (weight) of this product is made from renewable materials.
\n\nMaterials\nBed frame\nSolid pine, Stain, Clear acrylic lacquer\n\nUnderbed storage box, set of 2
\nDrawer front:\nParticleboard, Pine veneer, Stain, Clear acrylic lacquer, Paper foil, Stain, Clear acrylic lacquer
\n\nDrawer sides/ Drawer back/ Drawer divider:\nParticleboard, Paper foil\n\nDrawer bottom:\nFiberboard, Acrylic paint\n\nBottom rail:\nSolid pine
\n\nSlatted bed base, adjustable\nBed base frame:\nSolid beech\n\nLayer glued frame:\nBirch veneer\n\nLayer glued slats:
\nBeech veneer, Birch veneer, Foil, Adhesive resin as coating\n\nBed slat holder:\nHigh impact polystyrene\n\nBed mechanism:\nSteel, Galvanized
\n\nRibbon:\n100 % polypropylene\n\nCenter support beam\n\nGalvanized steel', 'Packages: 7\n\nHEMNES\nunderbed storage box, set of 2\nPackage(s): 2
\n\nLEIRSUND\nslatted bed base, adjustable\nPackage(s): 1\n\nSKORVA\ncenter support beam\nPackage(s): 1\n\nHemnes\nbed frame\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(28,
'692.283.93', 'Easy to get in and out of bed because the mattress base makes the bed higher.
\n\nNatural latex helps you to fully relax by contouring your body shape to relieve pressure and provide precise support.
\n\nNatural materials like wool and cotton help air flow through the mattress to make sure you don’t get too warm or cold.
\n\nComfort zones give very precise support and relieve pressure on your shoulders and hips.
\n\nThe distinctive texture on the sides of the mattress and mattress base comes from the natural, undyed and unbleached linen that creates subtle variations in the surface.
\n\nThe textiles closest to your skin are made of 100% cotton from sustainable sources.\n\n25-year Limited Warranty. Read about the terms in the Limited Warranty brochure.
\n\nMAUSUND latex mattress is included in the price but packaged separately.\n\nESPEVÄR foundation and ESPEVÄR cover are included in the price but packaged separately.
\n\nLegs are included in the price but packaged separately.\n\nDesigner\nOla Wihlborg/IKEA of Sweden', 'Length: 79 1/2 "\nWidth: 59 7/8 "\nHeight: 26 3/8 "', null,
'Environment\nNatural latex mattress:\nAt least 50% (weight) of this product is made from renewable materials.
\nAll the cotton in our products comes from more sustainable sources. This means that the cotton is either recycled, or grown with less water, less fertilizers and less pesticides, while increasing profit margins for the farmers.
\nProduct possible to recycle or use for energy recovery, if available in your community.
\n\nMaterials\nMattress base\nBed base frame/ Center support beam:\nSolid pine, Solid spruce\n\nBed base slats:\nSolid pine, 100 % polyester
\n\nCover\nTotal composition/ Cover:\n53 % linen, 47 % viscose/rayon\n\nInner fabric:\n100 % cotton\n\nFilling:\nWool wadding, 100 % cotton
\n\nNatural latex mattress\nTicking/ Ticking/ Lining:\n100 % cotton\n\nFilling:\nWool wadding\n\nTicking, side/ Piping/ Handles/ Total composition:
\n53 % linen, 47 % viscose/rayon\n\nComfort material:\n85 % natural/ 15 % synthetic latex\n\nLeg\nSolid oak, Clear acrylic lacquer
\n\nSupport leg\nSteel, Polypropylene, Epoxy powder coating, Epoxy powder coating', 'Packages: 5\n\nBURFJORD\nleg\nPackage(s): 1
\n\nESPEVÄR\nmattress base\nPackage(s): 1\n\nSULTAN\nsupport leg\nPackage(s): 1\n\nESPEVÄR\ncover\nPackage(s): 1\n\nMAUSUND\nnatural latex mattress\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(29,
'492.278.08', 'You can quickly convert the stacked beds into a double bed, twin beds or corner sofa.\n\nThe lightweight frames are easy to lift and move.
\n\nThe compact design is perfect for tight spaces or under low ceilings, so you can make the most of your available space.
\n\nThe stacked beds sit evenly since the upper bed has small plastic feet which fit into holes on the lower bed.
\n\nUntreated pine is a sustainable material with natural variations which gives every piece of furniture a unique look. With glazing paint, oil or paint, you can easily make the surface more durable – and your furniture more personal.
\n\nCan be used with up to 5" thick mattresses.\n\nStack max. 2 beds on top of each other.\n\nDo not place anything between the stacked beds that risks lifting the upper bed. For safety reasons it is important that all four legs of the upper bed are firmly placed into the holes of the lower bed.
\n\n2 straps with press studs prevent the beds from sliding apart when they are next to each other.
\n\nSlatted bed base is included.\n\nBed linen sold separately.\n\nMay be completed with FIXA stick-on floor protectors to protect the underlying surface against wear.
\n\nDesigner\nHenrik Preutz/IKEA of Sweden', 'Height, 2 beds: 18 1/8 "\nLength: 76 3/4 "\nWidth: 39 3/8 "\nHeight: 9 "\nPackage quantity: 2 pack\nMattress length: 74 3/8 "
\nMattress width: 38 1/4 "', 'Stackable bed with 2 mattresses\nStains can be removed by using an eraser or fine sandpaper.
\n\nStackable bed\nWipe clean with a damp cloth.\nWipe dry with a clean cloth.\n\nSpring mattress\nWipe clean with a damp cloth.', 
'Environment\nStackable bed:\nRenewable material (wood).\n\nMaterials\nStackable bed\nBedside/ Supporting rail:\nSolid pine, Solid pine
\n\nHead/footboard:\nSolid pine, Solid pine, Solid pine\n\nLeg:\nSolid pine\n\nLayer glued slats:\nBeech veneer, Birch veneer, Adhesive resin as coating
\n\nRibbon:\n100 % polyester\n\nSpring mattress\nTicking/ Ticking, side/ Ticking, underside/ Ticking/ Ticking:\n64 % cotton, 36 % polyester
\n\nWadding:\n65% viscose/rayon, 30% polyester, 5% modacrylic fiber wadding\n\nLining:\nNon-woven polypropylene\n\nZipper:\n100 % polyester\n\nComfort material:
\nPolyurethane foam 1.7 lb/cu.ft.\n\nBonell spring coil:\nSteel, 100 % polyester, Felt liner, 100 % polyester, Felt liner', 
'Packages: 4\n\nUTÅKER\nstackable bed\nThis product has multiple packages.\nPackage(s): 2\n\nHUSVIKA\nspring mattress\nPackage(s): 2');
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(30,
'992.916.70', 'A classic continental bed with a soft, fully upholstered headboard – perfect for placing in the middle of the room.
\n\nIf you read or watch TV in bed the soft headboard is comfortable to lean against.\n\n17 layer-glued slats adjust to your body weight and increase the suppleness of the mattress.
\n\nMattress is sold separately.\n\nLegs included.\n\nSlatted bed base is included in the price but packaged separately.
\n\nThe price for this combination includes SKORVA midbeam, but it is a separate product which you pick from its own shelf at the store. If you buy the bed via the website, SKORVA midbeam is included in the delivery.
\n\nFits a Queen size bed frame.\n\nDesigner\nIKEA of Sweden/Ola Wihlborg', 'Length: 86 5/8 "\nWidth: 63 "\nHeight: 49 1/4 "\nHeadboard height: 58 5/8 "\nHeight under furniture: 7 7/8 "
\nMattress length: 79 1/2 "\nMattress width: 59 7/8 "', 'Cover\nBed frame\n\nMachine wash warm, normal cycle.\nDo not bleach.\nDo not tumble dry.
\nIron medium temperature, max 300°F/150°C.\nDo not dry clean.', 'Materials\nBed frame\nHeadboard:
\nPolyester wadding, Polyester wadding, Polyurethane foam 1.7 lb/cu.ft., Polyurethane foam 24 kg/cu.m., Plywood, Solid pine, Fiberboard, Solid beech
\n\nMetal parts/ Corner fitting:\nSteel\n\nSide panel/ Foot:\nPolyester wadding, Polyester wadding, Plywood\n\nTotal composition:\n53 % linen, 47 % viscose/rayon
\n\nSlatted bed base\nLayer glued slats:\nEucalyptus veneer, Pine veneer, Adhesive resin as coating\n\nRibbon/ Ribbon:\n100 % polyester\n\nLayer glued slats:
\nBeech veneer, Birch veneer, Adhesive resin as coating\n\nCenter support beam\nGalvanized steel\n\nLeg\nSolid oak, Clear acrylic lacquer', 
'Packages: 5\n\nLURÖY\nslatted bed base\nPackage(s): 1\n\nBURFJORD\nleg\nPackage(s): 1\n\nKVALFJORD\nbed frame\nThis product has multiple packages.\nPackage(s): 2
\n\nSKORVA\ncenter support beam\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(31,
'792.486.06', 'The compact design is perfect for tight spaces or under low ceilings, so you can make the most of your available space.
\n\nThe hard-wearing solid pine has natural variations in grain, color and texture, giving every piece a unique look.
\n\nIf you oil, wax, lacquer or stain the untreated solid wood surface it will be more durable and easy to care for.
\n\nIf you read or watch TV in bed the angled headboard is comfortable to lean against.\n\nThere’s plenty of space under the bed for storage boxes - perfect for storing extra quilts and pillows.
\n\nYou can easily vacuum under the bed frame to keep the space clean and dust-free.\n\nMattress and bedlinens are sold separately.\n\nLURÖY slatted bed base is included in the price, but is packaged separately.
\n\nCenter support beam included.\n\nDesigner\nIKEA of Sweden/Jon Karlsson', 'Length: 76 3/4 "\nWidth: 54 3/4 "\nFootboard height: 11 3/4 "\nHeadboard height: 25 5/8 "
\nHeight under furniture: 7 7/8 "\nMattress length: 74 3/8 "\nMattress width: 53 1/8 "', 'Wood\nSlatted bed base\nWipe clean using a damp cloth and a mild cleaner.\nWipe dry with a clean cloth.
\n\nWood\nBed frame\nStains can be removed by using an eraser, fine sandpaper, soap, dishwashing detergent or paint thinner.', 
'Environment\nBed frame:\nRenewable material (wood).
\nWe have clear requirements for all the wood we use, including a ban on illegally harvested wood. 
\nBy 2020, we want all our wood to come from more sustainable sources, defined as certified or recycled.\n\nMaterials\nBed frame
\nSolid pine\n\nSlatted bed base\nLayer glued slats:\nBeech veneer, Birch veneer, Adhesive resin as coating\n\nRibbon/ Ribbon:
\n100 % polyester\n\nLayer glued slats:\nEucalyptus veneer, Pine veneer, Adhesive resin as coating', 
'Packages: 2\n\nLURÖY\nslatted bed base\nPackage(s): 1\n\nNEIDEN\nbed frame\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(32,
'503.334.50', 'With your imagination and a caravan in tow, you can travel wherever you like. 
\nWho knows, maybe you can visit tigers and lions in the kitchen or meet cowboys in the living room?\nRecommended for children 18 months and older.
\n\nDesignerMalin Unnborn', 'Length: 51 ¼ "\nWidth: 31 ½ "\nHeight: 47 ¼ "', 'Hand wash warm water.\nDo not bleach.\nDo not tumble dry.\nDo not iron.
\nDo not dry clean.', 'Materials\nFabric:\n100 % polyester\nFilling:\nPolyester fiber fill', 'HEMMAHOS
\nChildren\'s tent\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(33,
'403.384.05', 'The bed canopy is easy to mount to the wall above the bed or can be used to create a small and cozy corner with soft blankets and pillows. If it gets dirty, you can easily take it apart and wash it.
\n\nEasy to clean; machine wash, warm 104°F (40°C).\nThe fabric is made of 100% polyester, a durable material which is tested, approved, and free from harmful substances and additives.
\n\nWith a bed canopy over the cradle, crib or bed, you create a calm place that makes a child\'s room extra cozy, like in a fairytale. Here, your child will sleep like a prince or princess.
\n\nCan also be hung alone on the wall and at a lower height to make a cozy spot where your child can sit and play or read.
\n\nDifferent wall materials require different types of fasteners. Use fasteners suitable for the walls in your home.\n\nDesigner\nA Huldén/S Dahlman', 
'Length: 54 "\nWidth: 35 "', 'Hand wash warm water.\nDo not bleach.\nDo not tumble dry.\nIron medium temperature, max 300°F/150°C.\nDo not dry clean.', 
'Materials\n100 % polyester', 'LÖVA\nBed canopy\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(34,
'591.246.21', 'Extendable, so it can be pulled out as your child grows.\n\nLURÖY slatted bed base is included in the price, but is packaged separately.
\n\nMax load indicates static weight, in other words the load which the bed withstands if you lie or sit on it.
\n\nMattress and bedlinens are sold separately.\n\nDesigner\n\nIKEA of Sweden/Tina Christensen', 
'Min. length: 49 1/4 "\nMax. length: 76 3/4 "\nWidth: 40 1/8 "\nFootboard height: 28 3/8 "\nHeadboard height: 36 1/4 "
\nHeight under furniture: 9 "\nMax. load: 220 lb\nMattress length: 38 1/4 "\nMattress width: 74 3/4 "', null, 
'Environment\nSlatted bed base:\nAt least 50% (weight) of this product is made from renewable materials.
\nRenewable material (wood).\n\nMaterials\nExtendable bed frame\nSteel, Steel, Steel, Epoxy/polyester powder coating
\nSlatted bed base\nLayer glued slats:Beech veneer, Birch veneer, Adhesive resin as coating\n\nRibbon:\n100 % polyester', 
'Packages: 2\n\nLURÖY\nslatted bed base\nPackage(s): 1\n\nMINNEN\nextendable bed frame\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(35,
'992.919.91', 'The drawers are easy to open and spacious enough with room for toys, clothes and other gadgets that teenagers usually like to "store" on the floor.
\n\nSoft edges, recessed handles and just a few visible fittings make the bedframe safe and give it a clean design.
\n\nYou can easily adapt the timeless look based on your taste and personal style by completing with different bed textiles, pillows and accessories.
\n\nThe shelf section can be attached at the headboard or footboard of the bed.
\n\nIf you need extra storage close at hand, you can hang MÖJLIGHET bed pocket over the headboard or footboard of the bed.
\n\nYou can also use the bed as a room divider since the back is covered and lacquered in the same color as the rest of the frame.
\n\nIf you have a thick rug, the drawers at the bottom are still easy to open since the bottom of the frame is slightly higher.
\n\nMax load indicates static weight, in other words the load which the bed withstands if you lie or sit on it.
\n\nMay be completed with other products from the SLÄKT series as well as textiles and accessories from the MÖJLIGHET series.
\n\nMattress and bedlinens are sold separately.\n\nDesigner\nEbba Strandmark/IKEA of Sweden', 'Shelf width: 16 1/2 "
\nShelf depth: 13 3/4 "\nHeight of drawer (inside): 5 1/2 "\nLength: 77 1/8 "\nWidth: 40 1/2 "\nDrawer width (inside): 28 3/8 "
\nDrawer depth (inside): 22 1/2 "\nFootboard height: 28 "\nHeadboard height: 35 7/8 "\nMax. load: 220 lb\nMaximum load/drawer: 33 lb
\nMattress length: 74 3/8 "\nMattress width: 38 1/4 "', null, 'Environment\n\nSlatted bed base:\nAt least 50% (weight) of this product is made from renewable materials.
\nRenewable material (wood).\n\nMaterials\n\nBed frame with storage\nFootboard/ Headboard/ Bottom:\nParticleboard, Fiberboard, Plastic edging, Acrylic paint, Paper foil
\n\nBedside/ Side/ Back:\nParticleboard, Plastic edging, Acrylic paint, Paper foil\n\nBack part:\nFiberboard, Particleboard, Honeycomb structure paper filling (100% recycled), Plastic edging, Acrylic paint, Paper foil
\n\nRail:\nFiberboard, Particleboard, Plastic edging, Acrylic paint, Paper foil\n\nShelf:\nFiberboard, Particleboard, Plastic edging, Printed acrylic paint, Paper foil
\n\nDrawer front:\nFiberboard, Acrylic paint\n\nDrawer side:\nParticleboard, Plastic edging, Plastic foil\n\nDrawer back:\nParticleboard, Plastic foil
\n\nDrawer bottom:\nFiberboard, Acrylic paint, Paper foil\n\nSlatted bed base\nLayer glued slats:\nBeech veneer, Birch veneer, Adhesive resin as coating
\n\nRibbon:\n100 % polyester', 'Packages: 5\n\nSLÄKT\nbed frame with storage\nPackage(s): 4\n\nLURÖY\nslatted bed base\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(36,
'293.039.40', 'By making the guard rails out of textiles, we use less of the earths resources since the amount of metal decreases by 30% per bed(!) compared to similar beds – good for our environment.
\n\nThe desk top is large enough for a laptop and books, but still gives you enough room to fit a cozy nook of pillows or storage space next to it.
\n\nYou can easily keep the workspace neat and tidy since there is built-in cable management and a channel that holds pens in place.
\n\nA metal panel is angled against the desk top which has the same height as an A4 piece of paper. Perfect to use as a magnetic noticeboard and with accessories from the SKÅDIS series.
\n\nEasy to assemble since the fabric is divided into sections and the edge bands are elastic.
\n\nIf you want to make the bed even more comfortable and personal, you can complete with MÖJLIGHET pillow and bed pocket – they are dimensioned for the VITVAL series.
\n\nThe construction is light but steady, and has soft shapes.\n\nThe desk top mounts on the right or the left side of the bed.
\n\nThe ladder mounts on the right or the left side of the bed.\n\nWARNING! Furniture not anchored can tip. This furniture must be secured to the wall.
\n\nHigh beds and the upper bed of bunk or loft beds are not suitable for children under 6 years of age due to the risk of injury from falls.
\n\nIt is important not to screw hooks or handles onto the bed or hang ropes or belts in which children can get caught when playing.
\n\nBed base included.\n\nMattress and bedlinens are sold separately.\n\nMax load indicates static weight, in other words the load which the bed withstands if you lie or sit on it.
\n\nMin. ceiling height required: 94½\".\n\nDesigner\n\nIKEA of Sweden', 'Desk depth: 17 3/4 "\nWidth with ladder: 55 1/2 "\nLength: 77 1/2 "\nWidth: 40 1/2 "
\nDesk width: 40 1/8 "\nDesk height: 28 3/4 "\nHeight: 76 3/4 "\nHeight under loft bed: 59 "\nMax. load: 220 lb\nMattress length: \n74 3/8 "\nMattress width: 38 1/4 "
\nMax. mattress thickness: 5 1/8 "', null,  'Materials\n\nLoft bed frame\nFabric/ Ribbon/ Total composition:\n100 % polyester
\n\nLayer glued slats:\nBirch veneer, Beech veneer, Adhesive resin as coating\n\nMain parts/ Slat holder:\nSteel, Epoxy/polyester powder coating
\n\nDesk top\nSteel, Polyester powder coating', 'Packages: 4\n\nVITVAL\ndesk top\nPackage(s): 1\n\nVITVAL\nloft bed framePackage(s): 2');
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(37,
'702.992.85', 'A good solution where space is limited.\n\nThe bed is lower than standard beds so that parents can see their child
\n\nThe bed is lower, which makes it easier to make the bed.\n\nIt’s easier to get in and out of the bed with a centered ladder.\n\nBed base included.
\n\nHigh beds and the upper bed of bunk or loft beds are not suitable for children under 6 years of age due to the risk of injury from falls.
\n\nMattress and bedlinens are sold separately.\n\nMax load indicates static weight, in other words the load which the bed withstands if you lie or sit on it.
\n\nDesigner\nIKEA of Sweden', 'Max. weight/sleeping level: 220 lb\nLength: 77 1/2 "\nWidth: 40 1/2 "\nHeight: 51 3/8 "\nHeight under furniture: 5 3/4 "
\nMattress length: 74 3/8 "\nMattress width: 38 1/4 "\nDistance between beds: 33 7/8 "\nMax. mattress thickness: 5 1/8"', 'Hand wash cold, 86°F (30°C).
\nDo not bleach.\nDo not tumble dry.\nDo not iron.\nDo not dry clean.\nLine dry.', 'Materials\n\nFabric:\n100 %polyester\n\nMain parts:\nSteel, Epoxy/polyester powder coating', 
'Packages: 3\n\nTUFFING\nBunk bed frame\nPackage(s): 3'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(38,
'502.690.29', 'Can be divided into two single beds.\n\nThe ladder mounts on the right or the left side of the bed.\n\nMade of solid wood, which is a durable and warm natural material.
\n\nConvenient for limited living spaces.\n\nSlatted bed base is included.\n\nHigh beds and the upper bed of bunk or loft beds are not suitable for children under 6 years of age due to the risk of injury from falls.
\n\nIt is important not to screw hooks or handles onto the bed or hang ropes or belts in which children can get caught when playing.
\n\nMattress and bedlinens are sold separately.\n\nDesigner\nHenrik Preutz', 'Length: 77 3/4 "\nWidth: 40 1/8 "\nHeight: 63 "\nMattress length: 74 1/2 "\nMattress width: 38 "
\nMax. mattress thickness: 5 1/8 "', 'Wipe clean using a damp cloth and a mild cleaner.\nWipe dry with a clean cloth.', 
'Environment\nRenewable material (wood).\n\nMaterials\nMain parts:\nSolid pine, Stain, Clear acrylic lacquer\n\nBed frame panel:\nFiberboard, Foil, Printed fiberboard
\n\nSupporting rail:\nGalvanized steel\n\nBed base slats:\nSolid pine, Solid pine, Stain, Clear acrylic lacquer', 'Packages: 5\n\nNORDDAL
\nBunk bed frame\nPackage(s): 5'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(39,
'201.024.51', 'The ladder can mount on the left or right side of the bed.\n\nMade of solid wood, which is a durable and warm natural material.
\n\nA good solution where space is limited.\n\nMax load indicates static weight, in other words the load which the bed withstands if you lie or sit on it.
\n\nSlatted bed base is included.\n\nHigh beds and the upper bed of bunk or loft beds are not suitable for children under 6 years of age due to the risk of injury from falls.
\n\nIt is important not to screw hooks or handles onto the bed or hang ropes or belts in which children can get caught when playing.
\n\nMattress and bedlinens are sold separately.\n\nDesigner\nIKEA of Sweden', 'Max. weight/sleeping level: 220 lb\nLength: 77 1/8 "\nWidth: 41 "\nHeight: 61 3/4 "
\nMattress length: 74 3/8 "\nMattress width: 38 1/4 "\nMax. mattress thickness: 8 1/4 "', 'Wipe clean with a damp cloth.\nWipe clean with a dry cloth.', 
'Environment\nRenewable material (wood).\n\nMaterials\nBed base slats/ Step/ Front leg/ Leg:\nSolid pine\n\nMain parts:\nSolid pine, Adhesive', 
'Packages: 2\n\nMYDAL\nBunk bed frame\nPackage(s): 2'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(40,
'003.464.07', 'Only natural ingredients: meat, onion, breadcrumbs, egg, water, salt and pepper.\n\nMeatballs with mashed potatoes, cream sauce and lingonberry jam is Sweden’s No.1 dish.
\n\nMeatballs should taste like meat. That’s why we’ve seasoned the beef and pork gently with only a few ingredients, every one of them enhancing the meat flavor even more.
\n\nEasily prepared from frozen in minutes. In the oven, in the microwave or on the stove.\n\nEasily portioned. Prepare the amount needed, leave the rest in the freezer.
\n\nJust as tasty warm as they are cold, e.g. cut in half as a sandwich topping.\n\nCreate a buffet with meatballs, veggie balls, chicken meatballs and salmon balls. One for every taste.', 
'Net weight: 2 lb 3 oz', null, null, 'ALLEMANSRÄTTEN\nMeatballs, frozen\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(41,
'503.472.11', '10-year Limited Warranty. Read about the terms in the Limited Warranty brochure.
\n\nThe cold-start function prevents hot water waste and saves energy. When you lift the lever straight up, only cold water is released. The function restricts opening the lever fully to the right.
\n\nHot water is released by turning the lever to the left. It is only then that hot water is consumed.
\n\nThis is a durable faucet that you can use for many years, since the hard, ceramic discs withstand the friction that always occurs when you change the temperature of the water.
\n\nStrainer included.\n\nWater and energy saving aerator (1.2 gal/min.) for high-pressure systems included.\n\nConnection hoses with 9/16" connection included. Length: 13¾".
\n\nA tool is included that makes it easy to install the faucet in place.\n\nTested and certified according to applicable codes and standards including: ASME A112.18.1/CSA B125.1, NSF 61, NSF 372 and EPA WaterSense.
\n\nThe faucet can be used in high pressure systems. Tested to manage a pressure of max. 10 bar (1000 kPa). Recommended working pressure: 1.0 - 5.0 bar (100 kPa - 500 kPa).
\n\nFlow rate: 1.2 gal./min. (4.5 l/min.)\n\nMax. temperature hot water system 176°F.\n\nSpare parts are available to prolong the life of your product. For more information, contact IKEA Customer Services at your IKEA store or IKEA.com.
\n\nIf you are uncertain about the installation, contact a professional. The installation shall be made in accordance with valid local building and plumbing regulations.
\n\nFits IKEA sinks and standard sinks from other manufacturers.\n\nDesigner\nOla Wihlborg', 'Height: 7 1/2 "', 
'Wipe clean with a water dampened soft cloth and a mild non-abrasive dish detergent or soap, if necessary.
\nNever use scouring powder, steel wool or a detergent that is calcium-dissolving, sour or contains alcohol or an abrasive.', 
'Environment
\nWater is precious and should not be wasted. That’s why all our faucets and showers have a mechanism that helps save water and energy while keeping the water pressure just right. Good for us and our planet.
\n\nMaterials\nBrass, Metallized', 'HAMNSKÄR\nBath faucet with strainer\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(42,
'104.003.33', '10-year Limited Warranty. Read about the terms in the Limited Warranty brochure.
\n\nThe cold-start function prevents hot water waste and saves energy. When you lift the lever straight up, only cold water is released. The function restricts opening the lever fully to the right.
\n\nHot water is released by turning the lever to the left. It is only then that hot water is consumed.
\n\nThis is a durable faucet that you can use for many years, since the hard, ceramic discs withstand the friction that always occurs when you change the temperature of the water.
\n\nChrome-plated brass is a hard and durable surface that is easy to clean.\n\nStrainer included.
\n\nWater and energy saving aerator (1.2 gal/min.) for high-pressure systems included.\n\nConnection hoses with 9/16" connection included. Length: 13¾".
\n\nA tool is included that makes it easy to install the faucet in place.\n\nTested and certified according to applicable codes and standards including: ASME A112.18.1/CSA B125.1, NSF 61, NSF 372 and EPA WaterSense.
\n\nThe faucet can be used in high pressure systems. Tested to manage a pressure of max. 10 bar (1000 kPa). Recommended working pressure: 1.0 - 5.0 bar (100 kPa - 500 kPa).
\n\nFlow rate: 1.2 gal./min. (4.5 l/min.)\n\nMax. temperature hot water system 176°F.
\n\nSpare parts are available to prolong the life of your product. For more information, contact IKEA Customer Services at your IKEA store or IKEA.com.
\n\nIf you are uncertain about the installation, contact a professional. The installation shall be made in accordance with valid local building and plumbing regulations.
\n\nFits IKEA sinks and standard sinks from other manufacturers.\n\nDesigner\nMaria Seipel', 'Height: 4 3/4 "', 
'Wipe clean with a water dampened soft cloth and a mild non-abrasive dish detergent or soap, if necessary.
\nNever use scouring powder, steel wool or a detergent that is calcium-dissolving, sour or contains alcohol or an abrasive.', 
'Environment\nWater is precious and should not be wasted. That’s why all our faucets and showers have a mechanism that helps save water and energy while keeping the water pressure just right. Good for us and our planet.
\nThe material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.
\n\nMaterials\nBrass, Metallized', 'LILLSVAN\nBath faucet with strainer\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(43,
'603.430.62', '10-year Limited Warranty. Read about the terms in the Limited Warranty brochure.
\n\nThe cold-start function prevents hot water waste and saves energy. When you lift the lever straight up, only cold water is released. The function restricts opening the lever fully to the right.
\n\nHot water is released by turning the lever to the left. It is only then that hot water is consumed.
\n\nThis is a durable faucet that you can use for many years, since the hard, ceramic discs withstand the friction that always occurs when you change the temperature of the water.
\n\nChrome-plated brass is a hard and durable surface that is easy to clean.\n\nStrainer included.\n\nWater and energy saving aerator (1.2 gal/min.) for high-pressure systems included.
\n\nConnection hoses with 9/16" connection included. Length: 13¾".\n\nA tool is included that makes it easy to install the faucet in place.
\n\nTested and certified according to applicable codes and standards including: ASME A112.18.1/CSA B125.1, NSF 61, NSF 372 and EPA WaterSense.
\n\nThe faucet can be used in high pressure systems. Tested to manage a pressure of max. 10 bar (1000 kPa). Recommended working pressure: 1.0 - 5.0 bar (100 kPa - 500 kPa).
\n\nFlow rate: 1.2 gal./min. (4.5 l/min.)\n\nMax. temperature hot water system 176°F.
\n\nSpare parts are available to prolong the life of your product. For more information, contact IKEA Customer Services at your IKEA store or IKEA.com.
\n\nIf you are uncertain about the installation, contact a professional. The installation shall be made in accordance with valid local building and plumbing regulations.
\n\nSuitable for bathroom countertops only. For mounting behind or to the side of the sink according to assembly instructions.\n\nDesigner\nH Preutz/N Karlsson', 
'Height: 11 3/4 "', 'Wipe clean with a water dampened soft cloth and a mild non-abrasive dish detergent or soap, if necessary.
\nNever use scouring powder, steel wool or a detergent that is calcium-dissolving, sour or contains alcohol or an abrasive.', 
'Environment\nWater is precious and should not be wasted. That’s why all our faucets and showers have a mechanism that helps save water and energy while keeping the water pressure just right. Good for us and our planet.
\n\nMaterials\nBrass, Metallized', 'VOXNAN\nFaucet, tall\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(44,
'802.621.25', '10-year Limited Warranty. Read about the terms in the Limited Warranty brochure.
\n\nThis is a durable faucet that you can use for many years, since the hard, ceramic discs withstand the friction that always occurs when you change the temperature of the water.
\n\nChrome-plated brass is a hard and durable surface that is easy to clean.\n\nStrainer included.\n\nWater and energy saving aerator (1.2 gal/min.) for high-pressure systems included.
\n\nConnection hoses with 9/16" connection included. Length: 13¾".\n\nA tool is included that makes it easy to install the faucet in place.
\n\nTested and certified according to applicable codes and standards including: ASME A112.18.1/CSA B125.1, NSF 61, NSF 372 and EPA WaterSense.
\n\nThe faucet can be used in high pressure systems. Tested to manage a pressure of max. 10 bar (1000 kPa). Recommended working pressure: 1.0 - 5.0 bar (100 kPa - 500 kPa).
\n\nFlow rate: 1.2 gal./min. (4.5 l/min.)\n\nMax. temperature hot water system 176°F.
\n\nSpare parts are available to prolong the life of your product. For more information, contact IKEA Customer Services at your IKEA store or IKEA.com.
\n\nIf you are uncertain about the installation, contact a professional. The installation shall be made in accordance with valid local building and plumbing regulations.
\n\nFits IKEA sinks and standard sinks from other manufacturers.\n\nDesigner\nIKEA of Sweden', 'Height: 3 7/8 "', 
'Wipe clean with a water dampened soft cloth and a mild non-abrasive dish detergent or soap, if necessary.
\nNever use scouring powder, steel wool or a detergent that is calcium-dissolving, sour or contains alcohol or an abrasive.',
'Environment\nWater is precious and should not be wasted. That’s why all our faucets and showers have a mechanism that helps save water and energy while keeping the water pressure just right. Good for us and our planet.
\n\nMaterials\nBrass, Metallized', 'RUNSKÄR\nBath faucet with strainer\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(45,
'304.468.96', 'Safety film reduces damage if glass is broken.
\n\nThe frame around the bottom of the mirror forms a shelf where you can put your makeup, mobile phone or wallet.\n\nSuitable for use in most rooms, and tested and approved for bathroom use.
\n\nThe distinctive grain pattern in the walnut veneer gives each piece of furniture a unique character.\n\nWalnut is a naturally hardwearing material. The surface has been made even more durable by a protective coat of lacquer.
\n\nDo not use the frame as a shelf for candles.\n\nHang the mirror using the wall brackets on the back of the mirror according to the assembly instructions. Use screws, sold separately, suitable for the wall material in your home.
\n\nCombines with other furniture in the STOCKHOLM series.\n\nDesigner\n\nOla Wihlborg', 'Depth: 3 7/8 "\nDiameter: 23 5/8 "', 
'Wood\nWipe dry with a clean cloth.\nWipe clean with a water dampened cloth.
\n\nGlass\nWipe clean with a damp cloth. Use only water or window-cleaner.\nWipe dry with a clean cloth.', 'Materials\nMirror glass: Glass
\n\nFrame: Molded plywood, Walnut veneer, Clear lacquer\n\nFixing device: Molded plywood', 'STOCKHOLM\nMirror\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(46,
'302.174.99', 'You can hang your belts, bags and accessories from the knobs on the side.\n\nSuitable for use in most rooms, and tested and approved for bathroom use.
\n\nMade of solid wood, which is a durable and warm natural material.\n\nSafety film reduces damage if glass is broken.
\n\nFor your child’s safety, don’t allow them to climb or stand on the shelf under the mirror.\n\nDesigner\nKai Legaard', 
'Width: 18 1/2 "\nDepth: 23 1/4 "\nHeight: 71 5/8 "', 'Frame\nWipe clean using a damp cloth and a mild cleaner.\nWipe dry with a clean cloth.
\n\nGlass\nWipe clean with a damp cloth. Use only water or window-cleaner.\nWipe dry with a clean cloth.', 'Environment
\nLead-free mirrors – No lead added in manufacturing of our mirrors.\n\nMaterials\nMain parts:\nSolid pine, Stain, Clear acrylic lacquer\nMirror glass:\nGlass', 
'ISFJORDEN\nFloor mirror\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(47,
'002.781.49', 'One side with magnifying mirror.\n\nSuitable for use in high humidity areas since it is water-resistant.\n\nLED life approx. 20,000 hours.
\n\nLighting duration: Approx. 8 hours with alkaline AA batteries (LR6/1.5V) or approx. 5 hours with rechargeable AA batteries (Ni-MH/1.2V).
\n\nOne side of the mirror magnifies 3 times.\n\nLight color: warm white (3700 Kelvin).\n\nDo not expose to direct sunlight. The sunbeams may reflect in the mirror glass and ignite flammable material.
\n\nTested and approved for bathroom use.\n\nBatteries are sold separately, 4-AA size 1.5V (LR6) required.', 
'Height: 14 5/8 "\nDiameter: 7 7/8 "', '
Wipe clean with a dry cloth.', 'Environment\nSpecial waste handling may be required. Please contact your local authorities for more information.
\n\nMaterials\nBase/ Tube: Steel, Nickel plated\nMirror: Glass', 'KAITUM\nMirror with built-in light\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(48,
'003.069.20', 'The mirror can be placed on a table or chest of drawers, or hung on the wall.\n\nIf you choose to hang the mirror on the wall, you can use the stand as a hanger for scarves and ties.
\n\nSuitable for use in most rooms, and tested and approved for bathroom use.\n\nSafety film reduces damage if glass is broken.
\n\nIf you hang the mirror on the wall do not let your child climb or stand on the shelf/hanger.\n\nMounting fittings included.
\n\nDifferent wall materials require different types of fasteners. Use fasteners suitable for the walls in your home.\n\nDesigner\nOla Wihlborg', 
'Width: 10 5/8 "\nHeight: 15 3/4 "', 'Frame\nWipe clean using a damp cloth and a mild cleaner.\nWipe dry with a clean cloth.
\n\nGlass\nWipe clean with a damp cloth. Use only water or window-cleaner.\nWipe dry with a clean cloth.', 
'Environment\nLead-free mirrors – No lead added in manufacturing of our mirrors.
\n\nMaterials\nMain parts: Molded plywood, Ash veneer, Clear acrylic lacquer\nMirror glass: Glass', 
'IKORNNES\nTable mirror\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(49,
'504.002.70', 'Helps you organize your jewelry, makeup and bottles.
\n\n10-year Limited Warranty. Read about the terms in the Limited Warranty brochure.
\nSizes: 1 box (9½x8x3¾", 1 gal), 1 box (8⅝x3x3¾", 40 oz) and 3 boxes (4x3x3¾", 17 oz).
\n\nDesigner\nIKEA of Sweden', 'Length: 9 ½ "\nWidth: 7 ¾ "\nHeight: 4 "', 
'Wipe clean using a damp cloth and a mild cleaner.\nWipe dry with a clean cloth.', 
'Environment\nPlastic can be recycled multiple times, reducing our environmental footprint. All products containing recycled materials meet the same quality and safety demands as we have on all our products.
\n\nMaterials\nPET plastic', 'GODMORGON\nBox with lid, set of 5\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(50,
'403.918.79', 'You can place the jars individually, stacked or grouped thanks to the cork lids and tray that keep them in place.
\n\nCan be used with other SAXBORGA products.\n\nDesigner\nH Preutz/M Seipel',
'Sizes: 2 jars dia. 3", height 2", 2 jars dia. 3", height 4⅜" and 1 tray length 10", width 4" and height 1".',
'Wipe clean using a damp cloth and a mild cleaner.\nWipe dry with a clean cloth.', 
'Environment\nRenewable material (cork).\n\nMaterials\nJar: Glass\nLid/ Tray: Cork', 
'SAXBORGA\nJar with lid and tray, set of 5\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(51,
'092.165.95', "With SKÅDIS pegboard it's easy to organize all the rooms of the home and quickly find what you need.
\n\nThe accessories are easy to attach anywhere on the board and are easy to move when you like.
\n\nDifferent wall materials require different types of fasteners. Use fasteners suitable for the walls in your home.
\n\nTested and approved for bathroom use.\n\nDesigner\nEva Lilja Löwenhielm", 'Width: 22 "\nDepth: 4 ¾ "\nHeight: 22 "', 
null, 'Environment\n\nContainer with lid/container/hook/pegboard/shelf:
\nProduct possible to recycle or use for energy recovery, if available in your community.\n\nMaterials
\nContainer with lid\nMain parts:\nSteel, Epoxy/polyester powder coating\n\nContainer:\nPET plastic\n\nContainer/ shelf
\nSteel, Steel, Epoxy/polyester powder coating\n\nHook\nSteel, Galvanized, Powder coating\n\nPegboard\nMain parts:
\nFiberboard, Acrylic paint\n\nMetal parts:\nSteel, Powder coating', 'Packages: 6\n\nSKÅDIS\nshelf\nPackage(s): 2
\n\nSKÅDIS\npegboard\nPackage(s): 1\n\nSKÅDIS\ncontainer\nPackage(s): 1\n\nSKÅDIS\nhook\nPackage(s): 1\n\nSKÅDIS\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(52,
'601.931.28', "Anti-slip material on the bottom. The potty won't move easily when your child is using it.
\n\nMade from harmless plastic, the same material used in baby bottles, disposable diapers and food boxes.
\n\nEasy to empty and clean.\n\nRecommended for children 12 months and older.\n\nDesigner\nMonika Mulder", 
'Length: 14 ¼ "\nWidth: 10 ¾ "\nHeight: 11 "', 'Wipe clean with a mild soapy solution.', 'Environment
\n\nThe material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.
\nBPA (Bisphenol A) free\nIKEA has banned BPA (Bisphenol A) in plastic products in the children’s range (0-7 years) and in all food-contact products. IKEA phased out BPA in 2006.
\n\nMaterials\nPolypropylene, Synthetic rubber', "LOCKIG\nChildren's potty\nPackage(s): 1"); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(53,
'803.918.82', 'Bring the storage box wherever you like, to put on your contact lenses, jewelry or make-up. You don’t have to look for a mirror, there’s one inside.
\n\nPerfect for storing tweezers, nail files, scissors, contact lenses or make-up since the storage box has 2 inserts and 12 small compartments.
\n\nCan be used with other SAXBORGA products.\n\nDesigner\nH Preutz/M Seipel', 'Length: 9 ½ "\nWidth: 6 ¾ "\nHeight: 5 ½ "', 
'Wipe clean using a damp cloth and a mild cleaner.\nWipe dry with a clean cloth.', 'Environment\nRenewable material (cork).
\n\nMaterials\nLid: Cork\nBox: Wood Plastic Composite\nMirror: Glass', 'SAXBORGA\nStorage box with mirrored lid\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(54,
'203.242.92', 'Perfect when your child wants to learn how to brush their teeth and hair on their own.
\n\nYou can quickly mount the storage board at the right height with the four included suction cups. The only thing needed is a smooth surface such as glass, mirrors or tiles.
\n\nThe storage board has holes which make it easy for your child to hang all the pieces up.
\n\nJust as clean – quicker and with less water. With the hourglass, you can teach your child to save nature’s resources. The sand runs through for 6 minutes and has a marking for each 2-minute interval.
\n\nOnly sticks on flat surfaces such as glass, mirrors, and tiles.
\n\nFor increased stability, make sure to retighten the screws every 3 months.\n\nClean your tiles before mounting the suction cup to ensure a better grip.
\n\nHolds up to 6 lbs.\n\nCan be used with LÅDDAN storage bag and hook.\n\nDesigner\nS Fager/M Vinka', 'Max. load: 7 lb', 
'Wipe clean using a damp cloth and a mild cleaner.\n\nWipe clean with a dry cloth.
\n\nFor increased stability, make sure to retighten the screws every 3 months.', 
'Environment\nThe material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.
\n\nMaterials\nBasket/ Shelf:\nPolypropylene\n\nMirror glass:\nAcrylic, Polypropylene\n\nBoard/ Knob/ Cover cap/ Holder/ Lid:
\nABS plastic\n\nSuction cups:\nSynthetic rubber\n\nInsert:\nZinc, Galvanized\n\nContainer:\nABS plastic, Sand', 
'LÅDDAN\n6-piece storage board set\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(55,
'603.033.63', 'Suction cups keep the mat safely in place in your bathtub or shower.\n\nYou can keep the mat clean and fresh longer by hanging it up to dry after you’ve used it. The hole in the mat is perfect for hanging.
\n\nDesigner\nJohanna Jelinek', 'Length: 33 "\nWidth: 13 "', 'Machine wash warm, normal cycle.\nDo not bleach.\nDo not tumble dry.
\nDo not iron.\nDo not dry clean.\nLine dry.', 'Environment\nProduct possible to recycle or use for energy recovery, if available in your community.
\n\nMaterials\nNatural rubber, Calcium carbonate', 'DOPPA\nBathtub mat\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(56,
'403.812.53', 'Water drains easily through the holes in the bottom.\n\nOne push assembly - clean the wall surface and push to attach. No tools are needed.
\n\nTo release and remove, insert a credit card (or similar) between the suction cup and the wall. No ugly holes or marks are left behind.
\n\nThe suction cups have a tight grip on smooth surfaces like glass or tiles.\n\nOnly sticks on flat surfaces such as glass, mirrors, and tiles.
\n\nClean the surface before mounting the suction cup to ensure better grip.\n\nHolds up to 6 lbs.\n\nCombines with other products in TISKEN series.
\n\nDesigner\nIKEA of Sweden', 'Width: 11 "\nDepth: 6 ¾ "\nHeight: 6 ¾ "\nMax. load: 106 oz', 
'Wipe clean using a damp cloth and a mild cleaner.\nWipe dry with a clean cloth.', 
'Materials\nFrame/ Plate:\nPolycarbonate plastic\n\nSuction cup:\nSynthetic rubber\n\nCover/ Body/ Basket:\nRecycled ABS plastic', 
'TISKEN\nBasket with suction cup\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(57,
'601.483.29', '10-year Limited Warranty. Read about the terms in the Limited Warranty brochure.
\n\nCan be used as a shelf for a soap dish and tumbler, thanks to the depth of the frame.
\n\nStrainer and water-trap included.\n\nTowel hanger, soap dish and tray in stainless steel included.
\n\nAvailable in three widths, 15¾" and 23⅝".\n\nFits LILLÅNGEN bathroom cabinets.
\n\nIf you are uncertain about the installation, contact a professional. The installation shall be made in accordance with valid local building and plumbing regulations.
\n\nDesigner\nInma Bermudez', 'Width: 16 1/8 "\nsink cabinet width: 15 3/4 "\nDepth: 16 "\nThickness: 5 1/8 "', 
'Wipe clean with a water dampened soft cloth and a mild non-abrasive dish detergent or soap, if necessary.
\nDo not use scouring powder, steel wool, hard or sharp tools which can scratch the surface of the sink.', 
'Environment\nThe material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.
\n\nMaterials\nMain parts:\nCeramic, Colored glaze\n\nMain parts/ Strainer/ Stopper/ Knob:\nStainless steel
\n\nWater trap/ Washer:\nPolypropylene\n\nScrew:\nBrass, Chrome plated\n\nSeal:\nSynthetic rubber, Polyethylene foam
\n\nShaft:\nAcetal plastic', 'LILLÅNGEN\nSink\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(58,
'103.549.63', '10-year Limited Warranty. Read about the terms in the Limited Warranty brochure.
\n\nUnique water trap design gives room for a full sized drawer.\n\nA countertop sink gives your bathroom a complete, personal look.
\n\nStrainer and water-trap included.\n\nUse the included measuring template before attaching the sink to the countertop.
\n\nLet the silicone underneath the sink harden for 2 hours before connecting the water trap.
\n\nIf you are uncertain about the installation, contact a professional. The installation shall be made in accordance with valid local building and plumbing regulations.
\n\nThe sink is resistant to most chemicals, except for strong acids and strong alkalis.\n\nDesigner\nIKEA of Sweden', 
'Width: 11 3/8 "\nDepth: 15 3/8 "\nHeight: 3 7/8 "', 'Wipe clean with a water dampened soft cloth and a mild non-abrasive dish detergent or soap, if necessary.
\nDo not use scouring powder, steel wool, hard or sharp tools which can scratch the surface of the sink.', 
'Materials\nMain parts:\nChina, Colored glaze\n\nWater trap/ Washer:\nPolypropylene\n\nScrew:\nBrass, Chrome plated
\n\nStrainer/ Stopper/ Knob:\nStainless steel\n\nSeal:\nSynthetic rubber, Polyethylene foam\n\nShaft:\nAcetal plastic', 
'GUTVIKEN\nCountertop sink\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(59,
'302.915.16', '10-year Limited Warranty. Read about the terms in the Limited Warranty brochure.
\n\nUnique water trap design gives room for a full sized drawer.\n\nA countertop sink gives your bathroom a complete, personal look.
\n\nStrainer and water-trap included.\n\nUse the included measuring template before attaching the sink to the countertop.
\n\nLet the silicone underneath the sink harden for 2 hours before connecting the water trap.
\n\nIf you are uncertain about the installation, contact a professional. The installation shall be made in accordance with valid local building and plumbing regulations.
\n\nThe sink is resistant to most chemicals, except for strong acids and strong alkalis.\n\nMay be completed with TOLKEN countertop and GODMORGON sink cabinet.
\n\nDesigner\nIKEA of Sweden', 'Height: 5 1/2 "\nDiameter: 17 3/4 "', 'Wipe clean with a water dampened soft cloth and a mild non-abrasive dish detergent or soap, if necessary.
\nDo not use scouring powder, steel wool, hard or sharp tools which can scratch the surface of the sink.', 
'Environment\nThe material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.
\n\nMaterials\nMain parts:\nChina, Colored glaze\n\nWater trap/ Washer:\nPolypropylene\n\nScrew:\nBrass, Chrome plated
\n\nStrainer/ Stopper/ Knob:\nStainless steel\n\nSeal:\nSynthetic rubber, Polyethylene foam\n\nShaft:\nAcetal plastic', 
'TÖRNVIKEN\nCountertop sink\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(60,
'301.483.21', '10-year Limited Warranty. Read about the terms in the Limited Warranty brochure.
\n\nPerfect for more than one since the sinks has two bowls.\n\nUnique water trap design gives room for a full sized drawer.
\n\nStrainer and water-trap included.\n\nThe sink is resistant to most chemicals, except for strong acids and strong alkalis.
\n\nCeramic sinks are kiln-fired, which makes each one unique and the size may vary slightly from the measurements given.
\n\nIf you are uncertain about the installation, contact a professional. The installation shall be made in accordance with valid local building and plumbing regulations.
\n\nDesigner\nMagnus Elebäck', 'Width: 40 1/2 "\nsink cabinet width: 39 3/8 "\nDepth: 19 1/4 "\nDepth of sink: 4 3/8 "\nThickness: 2 3/8 "', 
'Wipe clean with a water dampened soft cloth and a mild non-abrasive dish detergent or soap, if necessary.
\nDo not use scouring powder, steel wool, hard or sharp tools which can scratch the surface of the sink.', 
'Environment\nThe material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.
\n\nMaterials\nMain parts:\nCeramic, Colored glaze\n\nWater trap/ Washer:\nPolypropylene\n\nScrew:
\nBrass, Chrome plated\n\nStrainer/ Stopper/ Knob:\nStainless steel\n\nSeal:\nSynthetic rubber, Polyethylene foam\n\nShaft:
\nAcetal plastic', 'ODENSVIK\nDouble bowl sink\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(61,
'201.301.66', 'Encourages role play which helps children to develop social skills by imitating grown-ups and inventing their own roles.
\n\nRecommended for children 3 years and older.\n\nThe rolling pin and pastry cutters can be used for regular baking. All other parts are only suitable for play and are not heat-resistant.
\n\nThis product bears the CE mark.\n\nDesigner\nIKEA of Sweden', null, 'Not oven-safe.\nNot dishwasher-safe.', 
'Environment\nProduct possible to recycle or use for energy recovery, if available in your community.
\n\nMaterials\nMold:\nAluminum\n\nBowl/ Plate:\nSteel, Tin plated\n\nTray:\nSteel, Non stick coating\n\nWooden part(s):\nSolid birch, Acrylic paint, Clear acrylic lacquer', 
'DUKTIG\n7-piece toy baking set\nPackage(s): 1');
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(62,
'203.300.66', 'An entire city where your train chugs along through tunnels and goes up steep hills on its journey passing high buildings and lush trees.
\n\nCan be used with most other railway systems on the market.
\n\nIn order to conserve our resources, we use as much of the tree as possible when we manufacture the LILLABO series. That’s why each item is unique with varying grain patterns and natural color shifts.
\n\nDevelops the imagination, fine motor skills and logical thinking of your child.
\n\nRecommended for children 3 years and older.\n\nThe train set connects together using the magnets on the train cars.
\n\nThis product bears the CE mark.\n\nDesigner\nHenrik Johansson', null, 'Wipe clean with a damp cloth.', 
'Materials\nTrack:\nSolid beech\n\nVehicles/ Tree:\nSolid beech, Acrylic paint, Clear acrylic lacquer
\n\nNail/ Axle:\nSteel, Galvanized\n\nWheel:\nPolyethylene\n\nHouse/ Roof/ Post:\nSolid beech, Stain, Clear acrylic lacquer
\n\nBridge/ Station:\nPolypropylene\n\nCrossing/ Tunnel:\nABS plastic', 'LILLABO\n45-piece train set with track\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(63,
'703.568.22', 'Honk and drive! On this rug there are roads, parking spaces, traffic signs and railroads – just like in a city. Perfect to use with toy cars and figures from the LILLABO series.
\n\nThe pile of the rug dampens sound, creating a snug feeling, and is soft to walk on.
\n\nChildren\'s play can place tough demands on surroundings, something that also applies to rugs. That’s why the rug is made from durable, stain-resistant synthetic fibers which are easy to care for.
\n\nThe play rug stays firmly in place and protects against cold floors thanks to the rubber coated underside.
\n\nLet play time begin! The rug is made from polyamide (nylon) - a soft, harmless plastic that is water/dirt resistant and easy to clean.
\n\nWe know that children are extra sensitive, but not to worry. This product has been tested and approved ‒ and is completely free from substances that may harm your child\'s skin or health.
\n\nRecommended for children 18 months and older.
\n\nThis rug is machine washable at 104°F on the delicate cycle. Because of the rug’s large size, we recommend professional rug cleaning.
\n\nDesigner\nHenrik Johansson', 'Length: 52 3/8 "\nWidth: 29 1/2 "\nArea: 11 sq feet', 'Machine wash warm, normal cycle.
\nDo not bleach.\nDo not tumble dry.\nDo not iron.\nDo not dry clean.\nShrinkage 4%.\nVacuum and rotate the rug regularly.', 
'Materials\nPile:\n100 % nylon\n\nBase fabric:\n100 % polypropylene\n\nBacking:\nSynthetic rubber', 
'STORABO\nRug\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(64,
'300.557.60', 'Can be placed on its back or hung on the wall.\n\nScrews are sold separately.\n\nDesigner\nKarl Malmvall', 
'Width: 4 3/4 "\nDepth: 3 7/8 "\nHeight: 17 3/4 "', 'Wipe clean with a damp cloth.', 'Environment
\nThe material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.
\n\nMaterials\nStainless steel', 'VURM\n4-bottle wine rack\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(65,
'403.712.25', 'You can choose to either mount the dish drainer directly on the wall or in the KUNGSFORS system, or place it on the countertop.
\n\nRemovable tray underneath to collect water from the drainer.\n\nThe dish drainer has soft plastic feet with an anti-slip surface so the dish drainer stands firm on the countertop.
\n\nThe spikes on the dish drainer can be folded down if you want to use it as a shelf.\n\nCan be used in high humidity areas.
\n\nMake sure that the space is high enough for your dishes before placing the dish drainer on the wall.\n\nYou can choose to mount it directly to the wall or with the help of KUNGSFORS suspension rail.
\n\nDifferent wall materials require different types of fasteners. Use fasteners suitable for the walls in your home.
\n\nBe aware that different wall materails are able to support different loads of weight. For instance, walls made of drywall cannot support as much weight as walls made of wood, concrete or brick.
\n\nIf you are uncertain about what type of mounting devices to use, please contact your local hardware store.\n\nMay be combined with other products in the KUNGSFORS series.
\n\nRecommended for indoor use only.\n\nDesigner\nEhlén Johansson', 'Width: 23 ½ "\nDepth: 11 ¾ "\nHeight: 4 "', 
'Wipe clean using a damp cloth and a mild cleaner.\nWipe dry with a clean cloth.\nAlways wipe surfaces of stainless steel lengthwise for an even, shiny finish.
\nDo not use scouring-powder, steel wool, hard or sharp tools which can scratch the stainless steel surface.', 
'Materials\nStrip/ Tray:\nStainless steel, Stainless steel\n\nBracket/ Rivet:\nStainless steel\n\nWire:\nSteel, Galvanized, Powder coating', 
'KUNGSFORS\nDish drainer\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(66,
'301.317.16', 'Suitable for large kitchen utensils.', 'Height: 7 1/8 "\nDiameter: 4 3/4 "', 'Dishwasher-safe.', 'Environment
\nThe material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.
\n\nMaterials\nStainless steel', 'ORDNING\nUtensil holder\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(67,
'002.086.70', 'The paper towel holder has a support bar that makes it easier to tear off a sheet.\n\nDesigner\nIKEA of Sweden', 
'Height: 11 "', 'Wipe clean with a damp cloth.', 'Environment\nThe material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.
\n\nMaterials\nSteel, Galvanized', 'TORKAD\nPapertowel holder\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(68,
'101.490.29', 'Levers make uncorking bottles easier.\n\nBottle opener in the handle.', 'Length: 6 ¼ "', 'Handwash only.', 'Environment
\nThe material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.
\n\nMaterials\nZinc, Nickel plated', 'IDEALISK\nCorkscrew\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(69,
'103.468.31', 'The blade of the knife has a ceramic non-stick coating. This makes the knife easy to clean and prevents food from sticking to the blade when cutting and chopping.
\n\nThe handle has a synthetic rubber feature that provides a better grip and helps prevent the knife from slipping in your hand.
\n\nWith the included knife block you have proper storage for your knives, since it protects the blade of the knife and keeps the edge sharper longer.
\n\nIncludes: Cook\'s knife 7½" (tot. length 13"), cook’s knife 5¾" (tot. length 11"), paring knife 3" (tot. lenght 7½") and knife block.
\n\nWash this product before using it for the first time.\n\nDesigner\nH Crondahl/A Pitkäjärvi', 'Length: 11 "\nHeight: 13 "', 
'The knife block can be wiped clean with a damp cloth. The knives should be washed by hand.', 'Materials\nBase/ Stand:\nABS plastic
\n\nRivet:\nSynthetic rubber\n\nBlade:\nStainless steel\n\nHandle:\nSynthetic rubber, Polypropylene\n\nFoot:\nSilicone rubber', 'JÄMFÖRA
\nKnife block with 3 knives\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(70,
'702.576.24', 'Materials in the handle provide a firm grip.
\n\nIncludes: Bread knife 9" (tot. length 13¾"), cook\'s knife 5¾" (tot. length 11") and paring knife 4" (tot. lenght 8").
\n\nWash this product before using it for the first time.\n\nDesigner\nD Crafoord/U Vejbrink', null,  'Handwash only.', 'Materials\nHandle:
\nPolypropylene, Synthetic rubber\n\nBlade:\nStainless steel', 'ÄNDLIG\n3-piece knife set\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(71,
'004.367.90', 'Materials in the handle provide a firm grip.
\n\nIncludes: Cook\'s knife 5½" (tot. length 10⅝") and paring knife 3" (tot. length 7").
\n\nWash this product before using it for the first time.\n\nDesigner\nH Crondahl/A Pitkäjärvi', null, 'Handwash only.', 'Materials\nBlade:
\nStainless steel\n\nHandle:\nPolypropylene', 'FÖRDUBBLA\n2-piece knife set\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(72,
'503.468.29', 'Includes: Cooks knife 6¾" (tot. length 12"), cook’s knife 5" (tot. length 11") and paring knife 3" (tot. lenght 7½").
\n\nWash this product before using it for the first time.\n\nDesigner\nAaron Probyn', null, 'Handwash only.', 
'Materials\nBlade:\nStainless steel\n\nHandle:\nPolypropylene, Synthetic rubber\n\nCover cap:\nStainless steel, Non stick coating', 
'FÖRSLAG\n3-piece knife set\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(73,
'303.411.73', 'Includes: 1 cook’s knife 5½" (tot. length 10"), 1 cook’s knife 6¾" (tot. length 12") and 1 utility knife 8" (tot. length 13").
\n\nDesigner\nHåkan Olsson', null, 'Handwash only.', 'Materials\nBlade:\nStainless steel\n\nHandle:\nPolypropylene, Synthetic rubber', 
'VÖRDA\n3-piece knife set\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(74,
'700.917.61', 'Includes: Fork, knife, spoon, teaspoon and dessert/salad fork, 4 of each.\n\nWash this product before using it for the first time.
\n\nDesigner\nCarl-Gustaf Jahnsson', null, 'Dishwasher-safe.\n\nFor the flatware to be easy to clean and to reduce the risk of corrosion, always rinse off the remains of any food immediately.', 
'Environment\nThe material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.
\n\nMaterials\nSpoon/ Fork/ Salad fork/ Tea spoon:\nStainless steel\n\nKnife:\nStainless steel, Stainless steel', 
'DRAGON\n20-piece flatware set\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(75,
'702.334.16', 'You can easily turn the chopping board and use both sides when you prepare food, because it has easy-to-grip slanted edges.
\n\nWash this product before using it for the first time.\n\nDesigner\nJon Karlsson', 'Length: 13 ½ "\nWidth: 9 ½ "\nThickness: ½ "', 
'Dishwasher-safe.', 'Environment\nNo BPA (Bisphenol A) added.\nThe material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.
\n\nMaterials\nMiddle part:\nReinforced polypropylene\n\nUpper part/ Lower part:\nPolyethylene, Polypropylene', 
'MATLUST\nChopping board\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(76,
'000.467.86', 'The oil prolongs the life of kitchen accessories in untreated wood.\nApproved for use on surfaces where food is prepared.', 
'Volume: 17 oz', null, 'Materials\nWhite mineral oil', 'SKYDD\nWood treatment oil, indoor use\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(77,
'002.334.29', 'The chopping board collects food juice in the milled groove and prevents it from spilling on to your countertop.
\n\nYou can easily turn the chopping board and use both sides when you prepare food, because it has easy-to-grip slanted edges.
\n\nCan be placed over the bowl on BOHOLMEN, BREDSKÄR or FYNDIG sink to get an extra work surface for preparing food.
\n\nMade of bamboo, which is an easy-care, durable natural material that is also gentle on your knives.\n\nThe weight provides a stable base for cutting.
\n\nFits in the bowl of all sinks in the BOHOLMEN series.\n\nSKYDD wood treatment oil for indoor use is recommended for maintenance.
\n\nWash this product before using it for the first time.\n\nDesigner\nJon Karlsson', 'Length: 17 ¾ "\nWidth: 14 ¼ "\nThickness: 1 ¼ "', 
'Should be treated with food approved oil now and then.\nHandwash only.', 'Environment\nRenewable material (bamboo).\n\nMaterials\nBamboo, Oil', 
'APTITLIG\nButcher block\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(78,
'300.833.34', 'Includes: 13" spoon, 11" ladle, 13" turner and 13" spaghetti server.\n\nWash this product before using it for the first time.
\n\nDesigner\nIKEA of Sweden', null, 'Dishwasher-safe.', 'Environment\nThe material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.
\n\nMaterials\nStainless steel', 'GRUNKA\n4-piece kitchen utensil set\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(79,
'902.257.31', 'Gentle to pots and pans with non-stick coating.\n\nWash this product before using it for the first time.\n\nDesigner\nJozephine Duker', 
'Length: 10 "', 'Dishwasher-safe.', 'Environment\nPossible to separate for recycling or energy recovery if available in your community.
\nNo BPA (Bisphenol A) added.\n\nMaterials\nHandle:\nABS plastic\n\nBlade:\nSilicone rubber', 'GUBBRÖRA\nRubber spatula\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(80,
'102.336.69', 'Two gears allow you to choose the speed and vary the power.
\n\nThe metal bridge between the whisks rests against the bottom of the bowl, which gives you extra support when whisking.
\n\nYou don’t need electricity, as the whisk is cranked by hand, which saves energy.\n\nEasy to clean, as the entire handheld whisk can be rinsed under running water.
\n\nDesigner\nWiebke Braasch', 'Length: 11 "', 'Dishwasher-safe.', 'Environment\nNo BPA (Bisphenol A) added.
\nThe material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.
\n\nMaterials\nHandle/ Knob:\nSynthetic rubber\n\nMetal parts:\nStainless steel\n\nHousing/ Top:\nABS plastic\n\nWhisk:\nReinforced polyamide', 
'JÄMFÖRLIG\nHand held whisk\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(81,
'700.286.80', 'Only natural ingredients: meat, onion, breadcrumbs, egg, water, salt and pepper.', 'Net weight: 
2.20 lb', null, null, 'KÖTTBULLAR\nMeatballs, frozen\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(82,
'292.960.01', "You sit comfortably thanks to the chair's shaped back and seat. \n\nor increased stability, re-tighten the screws about two weeks after assembly and when necessary.", 
'Length: 55 1/8 "\nWidth: 30 3/4 "\nHeight: 37 3/8 "', 'Bar table/barstool frame/seat shell\nWipe clean with a damp cloth.', 
'Materials\nBar table\nTable top:\nFiberboard, Acrylic paint\n\nFeet:\nSynthetic rubber\n\nLeg/ Underframe:\nSolid eucalyptus wood, Paint
\n\nBarstool frame\nLeg/ Leg rail:\nSolid eucalyptus wood, Paint\n\nFeet:\nSynthetic rubber\n\nFitting:\nSteel, Galvanized\n\nSeat shell\nPolypropylene', 
'Packages: 9\n\nFANBYN\nbar table\nPackage(s): 1\n\nFANBYN\nseat shell\nPackage(s): 4\n\nFANBYN\nbarstool frame\nPackage(s): 4'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(83,
'392.602.47', 'You sit comfortably thanks to the shaped back and armrests.\n\nMay be combined with FANBYN bar table.
\n\nFor increased stability, re-tighten the screws about two weeks after assembly and when necessary.', 
'Tested for: 243 lb\nWidth: 21 1/4 "\nDepth: 24 3/4 "\nHeight: 40 1/8 "\nSeat width: 20 7/8 "\nSeat depth: 16 1/2 "\nSeat height: 25 1/4 "', 
'Seat shell/barstool frame\nWipe clean with a damp cloth.', 'Materials\nSeat shell\nPolypropylene\n\nBarstool frame\nLeg/ Leg rail:
\nSolid eucalyptus wood, Paint\n\nFeet:\nSynthetic rubber\n\nFitting:\nSteel, Galvanized', 'Packages: 2\n\nFANBYN\nseat shell\nPackage(s): 1
\n\nFANBYN\nbarstool frame\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(84,
'592.530.81', 'You can just shake off water from a light rain, as the cushion cover is water repellent.
\n\nThe cover is easy to keep clean because it is removable and machine washable.\n\nThe color stays fresh for longer, as the fabric is fade resistant.
\n\nThe dope-dyeing process reduces consumption of water and dye while improving color fastness compared to traditional dyeing techniques.
\n\nFits SOLLERÖN, ÄPPLARÖ and KUNGSHOLMEN seating sections.\n\nUse with FRÖSÖN cover for seat pad so that you have a spare cover when you want to change the look of the seat pad or when the cover for the seat pad needs to be washed.
\n\nDesigner\nIKEA of Sweden/Eva Lilja Löwenhielm', 'Width: 24 3/8 "\nDepth: 24 3/8 "\nThickness: 4 3/4 "', 
'Seat pad, outdoor\nThe best way to extend the life of your outdoor cushion is by cleaning it regularly and storing it in a cool, dry place indoors or in a storage bag when not in use.
\nMake sure the cushion is completely dry before storing it away in the storage bag.\nDo not wash.\nDo not bleach.\nDo not tumble dry.\nDo not iron.
\nDo not dry clean.\nMachine wash warm, normal cycle.\nClose the zipper before washing.\nDo not bleach.\nTumble dry, low, normal cycle.\nIron low.\nDo not dry clean.', 
'Environment\nCover for seat pad:\nBy using recycled polyester in this product, we consume less new raw materials and lower our environmental footprint.
\nThe yarn in this product is dope-dyed, a color method for synthetic fibers, which reduces consumption of water and dye while improving color fastness compared to traditional dyeing techniques.
\nNo perfluorinated chemicals (e.g. PFOS, PFOA, PFOSA) are used to make this product water repellent. As perfluorinated chemicals are non-degradable, it’s better for you and the environment to avoid them.
\n\nMaterials\nCover for seat pad\n100% polyester (min. 90% recycled)\n\nInner seat pad\nCover/ Filling/ Smolder resistant lining:\nPolyester wadding
\n\nCore filling:\nPolyurethane foam', 'Packages: 2\n\nDUVHOLMEN\ninner seat pad\nPackage(s): 1\n\nFRÖSÖN\ncover for seat pad\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(85,
'402.085.31', 'The drop-leaves can be folded and removed, so you can quickly adjust the table size according to your needs.
\n\nThe hole in the middle of the table top keeps your umbrella in place.
\n\nFor added durability and so you can enjoy the natural expression of the wood, the furniture has been pre-treated with several layers of semi-transparent wood stain.
\n\nSeats 4-8.\n\nOnly recommended for outdoor use.\n\nUse VÅRDA wood stain, for outdoor-use when re-staining the furniture.\n\nDesigner\nK Hagberg/M Hagberg', 
'Length: 78 3/4 "\nMin. length: 55 1/8 "\nMax. length: 102 3/8 "\nWidth: 30 3/4 "\nHeight: 28 3/8 "\nHole diameter: 2 "', 
'The best way to extend the life of your wooden outdoor furniture is by cleaning it regularly, not leaving it outdoors unprotected more than necessary, and re-staining it on a regular basis.
\nClean: Use a mild soapy solution. Wipe dry with a clean dry cloth.
\nMaintenance: To prevent the surface from drying out and cracking, and moisture from penetrating into the wood, we recommend you to re-stain the furniture on a regular basis, for example once or twice a year.
\nStoring: If possible, store in a cool dry place indoors. If the furniture is stored outside, cover it with a waterproof cover. After a rain or snowfall, wipe off excess water or snow from flat surfaces. Allow air to circulate to avoid condensation',
'Environment\nProduct possible to recycle or use for energy recovery, if available in your community.
\nWe have clear requirements for all the wood we use, including a ban on illegally harvested wood. By 2020, we want all our wood to come from more sustainable sources, defined as certified or recycled.
\n100% renewable material. (Fixtures excluded)\nMaterials\nSolid acacia wood, Acrylic stain', 
'ÄPPLARÖ\nDrop-leaf table, outdoor\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(86,
'102.051.81', 'For added durability and so you can enjoy the natural expression of the wood, the furniture has been pre-treated with several layers of semi-transparent wood stain.
\n\nThis bench has been tested for home use and meets the requirements for durability and safety, set forth in the following standards: EN 581.
\n\nUse VÅRDA wood stain, for outdoor-use when re-staining the furniture.\n\nOnly recommended for outdoor use.\n\nDesigner\nK Hagberg/M Hagberg',
'Width: 44 7/8\n"Depth: 16 1/8 "\nHeight: 17 3/8 "', 'The best way to extend the life of your wooden outdoor furniture is by cleaning it regularly, not leaving it outdoors unprotected more than necessary, and re-staining it on a regular basis.
\nClean: Use a mild soapy solution. Wipe dry with a clean dry cloth.
\nMaintenance: To prevent the surface from drying out and cracking, and moisture from penetrating into the wood, we recommend you to re-stain the furniture on a regular basis, for example once or twice a year.
\nStoring: If possible, store in a cool dry place indoors. If the furniture is stored outside, cover it with a waterproof cover. After a rain or snowfall, wipe off excess water or snow from flat surfaces. Allow air to circulate to avoid condensation.',
'Environment\nWe have clear requirements for all the wood we use, including a ban on illegally harvested wood. By 2020, we want all our wood to come from more sustainable sources, defined as certified or recycled.
\n100% renewable material. (Fixtures excluded)\nProduct possible to recycle or use for energy recovery, if available in your community.
\n\nMaterials\nSolid acacia wood, Acrylic stain', 'ÄPPLARÖ\nBench, outdoor\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(87,
'902.085.43', 'The back can be adjusted to five different position.\n\nWheels make it easy to move.
\n\nYou can make your chaise more comfortable and personal by adding a chaise pad in a style you like.
\n\nFor added durability and so you can enjoy the natural expression of the wood, the furniture has been pre-treated with several layers of semi-transparent wood stain.
\n\nCushions are sold separately.\n\nUse VÅRDA wood stain, for outdoor-use when re-staining the furniture.\n\nMay be completed with TOSTERÖ chaise cover.
\n\nOnly recommended for outdoor use.\n\nDesigner\nK Hagberg/M Hagberg', 'Length: 78 3/8 "\nWidth: 28 "\nHeight: 13 "\nBed width: 23 5/8 "\nBed length: 75 5/8 "',
'The best way to extend the life of your wooden outdoor furniture is by cleaning it regularly, not leaving it outdoors unprotected more than necessary, and re-staining it on a regular basis.
\nClean: Use a mild soapy solution. Wipe dry with a clean dry cloth.
\nMaintenance: To prevent the surface from drying out and cracking, and moisture from penetrating into the wood, we recommend you to re-stain the furniture on a regular basis, for example once or twice a year.
\nStoring: If possible, store in a cool dry place indoors. If the furniture is stored outside, cover it with a waterproof cover. After a rain or snowfall, wipe off excess water or snow from flat surfaces. Allow air to circulate to avoid condensation.',
'Environment
\nWe have clear requirements for all the wood we use, including a ban on illegally harvested wood. By 2020, we want all our wood to come from more sustainable sources, defined as certified or recycled.
\n100% renewable material. (Fixtures excluded)\nProduct possible to recycle or use for energy recovery, if available in your community.
\n\nMaterials\nMain parts:\nSolid acacia wood, Acrylic stain\n\nTire:\nSynthetic rubber', 'ÄPPLARÖ\nChaise\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(88,
'702.085.39', 'The back can be adjusted to five different position.\n\nEasy to fold up and put away.\n\nYou can make your chair more comfortable and personal by adding a chair pad in a style you like.
\n\nFor added durability and so you can enjoy the natural expression of the wood, the furniture has been pre-treated with several layers of semi-transparent wood stain.
\n\nCushions are sold separately.\n\nUse VÅRDA wood stain, for outdoor-use when re-staining the furniture.
\n\nMay be completed with KUDDARNA, FRÖSÖN/DUVHOLMEN or HÅLLÖ seat/back cushion.\n\nThis chair has been tested for home use and meets the requirements for durability and safety, set forth in the following standards: EN 581.
\n\nOnly recommended for outdoor use.\n\nDesigner\n\nK Hagberg/M Hagberg', 'Tested for: 243 lb\nWidth: 24 3/4 "\nDepth: 31 1/2 "\nHeight: 39 3/4 "\nSeat width: 17 3/8 "
\nSeat depth: 18 7/8 "\nSeat height: 16 1/8 "', '
The best way to extend the life of your wooden outdoor furniture is by cleaning it regularly, not leaving it outdoors unprotected more than necessary, and re-staining it on a regular basis.
\nClean: Use a mild soapy solution. Wipe dry with a clean dry cloth.
\nMaintenance: To prevent the surface from drying out and cracking, and moisture from penetrating into the wood, we recommend you to re-stain the furniture on a regular basis, for example once or twice a year.
\nStoring: If possible, store in a cool dry place indoors. If the furniture is stored outside, cover it with a waterproof cover. After a rain or snowfall, wipe off excess water or snow from flat surfaces. Allow air to circulate to avoid condensation.',
'Environment\nProduct possible to recycle or use for energy recovery, if available in your community.
\nWe have clear requirements for all the wood we use, including a ban on illegally harvested wood. By 2020, we want all our wood to come from more sustainable sources, defined as certified or recycled.
\n100% renewable material. (Fixtures excluded)\n\nMaterials\nSolid acacia wood, Acrylic stain', 
'ÄPPLARÖ\nReclining chair, outdoor\nPackage(s): 1');
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(89,
'892.531.07', 'You can just shake off water from a light rain, as the cushion cover is water repellent.
\n\nThe color stays fresh for longer, as the fabric is fade resistant.\n\nThe cover is easy to keep clean because it is removable and machine washable.
\n\nFits SOLLERÖN, ÄPPLARÖ and KUNGSHOLMEN seating sections.\n\nUse with FRÖSÖN cover for back cushion so that you have a spare cover when you want to change the look of the back cushion or when the back cushion cover needs to be washed.
\n\nDesigner\nIKEA of Sweden/Eva Lilja Löwenhielm', 'Length: 17 3/8 "\nWidth: 24 3/8 "\nThickness: 5 1/2 "',
'Back cushion, outdoor\nThe best way to extend the life of your outdoor cushion is by cleaning it regularly and storing it in a cool, dry place indoors or in a storage bag when not in use.
\nMake sure the cushion is completely dry before storing it away in the storage bag.\nDo not wash.\nDo not bleach.\nDo not tumble dry.\nDo not iron.
\nDo not dry clean.\nMachine wash warm, normal cycle.\nClose the zipper before washing.\nDo not bleach.\nTumble dry, low, normal cycle.\nIron low.\nDo not dry clean.',
'Environment\nCover for back cushion:\nBy using recycled polyester in this product, we consume less new raw materials and lower our environmental footprint.
\nThe yarn in this product is dope-dyed, a color method for synthetic fibers, which reduces consumption of water and dye while improving color fastness compared to traditional dyeing techniques.
\nNo perfluorinated chemicals (e.g. PFOS, PFOA, PFOSA) are used to make this product water repellent. As perfluorinated chemicals are non-degradable, it’s better for you and the environment to avoid them.
\n\nMaterials\nCover for back cushion\n100% polyester (min. 90% recycled)\n\nInner back cushion\nCover/ Smolder resistant lining:
\nPolyester wadding\n\nFilling:\n100 % polyester (100% recycled)', 'Packages: 2\n\nDUVHOLMEN\ninner back cushion\nPackage(s): 1
\n\nFRÖSÖN\ncover for back cushion\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(90,
'192.519.65', 'In HAVSTEN you sit deep and low with a comfortable resilience thanks to the elastic mesh in the bottom.
\n\nCreate an armchair, loveseat, a sofa or a sectional as large as you like.
\n\nYou can just shake off water from a light rain, as the cushion cover is water repellent.
\n\nThe cushion covers are dope dyed, a process that reduces consumption of water and dyestuff while improving color fastness compared to traditional dyeing techniques.
\n\nThe cushion has a longer life because it can be turned over and used on both sides.\n\nEasy to keep clean since the cushion cover can be removed and washed.
\n\nYou can have a personal touch to your sofa by adding one or more decorative cushions to your style and taste.
\n\nThe firmness of the mesh fabric can be tightened/adjusted with the strap in the back.\n\nDesigner\nAndreas Fredriksson',
'Width: 64 5/8 "\nDepth: 37 "\nHeight: 35 3/8 "\nSeat depth: 24 3/8 "\nSeat height: 16 1/2 "',
'Cushion cover\n\nBack cushion, outdoor/seat pad, outdoor\nMachine wash warm, normal cycle.\nDo not bleach.\nTumble dry, low, normal cycle.
\nIron low.\nDo not dry clean.\n\nLoveseat, in/outdoor
\nStoring: If possible, store in a cool dry place indoors. If the furniture is stored outside, cover it with a waterproof cover. After a rain or snowfall, wipe off excess water or snow from flat surfaces. Allow air to circulate to avoid condensation.
\nStore the sofa cushions in a cool, dry place indoors when the season is over, preferably in a storage bag or storage box to protect from dirt and dust. Make sure the cushions are completely dry before storing.
\nClean: Use a mild soapy solution.\nHand wash warm water.\nDo not bleach.\nDo not tumble dry.\nDo not iron.\nDo not dry clean.',
'Environment\nBack cushion, outdoor/seat pad, outdoor:
\nThe yarn in this product is dope-dyed, a color method for synthetic fibers, which reduces consumption of water and dye while improving color fastness compared to traditional dyeing techniques.
\nNo perfluorinated chemicals (e.g. PFOS, PFOA, PFOSA) are used to make this product water repellent. As perfluorinated chemicals are non-degradable, it’s better for you and the environment to avoid them.
\nPossible to separate for recycling or energy recovery if available in your community.
\n\nMaterials\nBack cushion, outdoor\nCushion cover:\n100% polyester (min. 90% recycled)\n\nInner fabric:\n100 % polypropylene\n\nFilling:\n100 % polyester (100% recycled)
\n\nSeat pad, outdoor\nCushion cover:\n100% polyester (min. 90% recycled)\n\nInner fabric:\n100 % polypropylene\n\nFilling:\nPolyester wadding
\n\nCore filling:\nPolyurethane foam\n\nSeat and back frame, outdoor\nMesh:\n63% TPE, 37 % polyester\n\nStrap:\n78% polypropylene, 22 % polyester
\n\nMetal tube:\nSteel, Galvanized, Polyester powder coating\n\nEnd cap:\nReinforced polyamide\n\nBuckle:\nZinc, Galvanized\n\nLocking ring:\nSteel, Chrome plated
\n\nSeat frame, outdoor\nFrame:\nSteel, Polyester powder coating\n\nFeet:\nPolyamide', 'Packages: 9\n\nHAVSTEN\nseat frame, outdoor
\nPackage(s): 3\n\nHAVSTEN\nseat pad, outdoor\nPackage(s): 2\n\nHAVSTEN\nseat and back frame, outdoor\nPackage(s): 2\n\nHAVSTEN\nback cushion, outdoor\nPackage(s): 2'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(91,
'403.326.82', 'Easy to fold up and put away.\n\nUse VÅRDA wood stain, for outdoor-use when re-staining the furniture.\n\nOnly recommended for outdoor use.
\n\nDesigner\nIKEA of Sweden', 'Width: 18 7/8 "\nDepth: 36 1/4 "\nHeight: 35 "\nSeat width: 16 7/8 "\nSeat depth: 15 3/8 "\nSeat height: 16 7/8 "',
'The best way to extend the life of your wooden outdoor furniture is by cleaning it regularly, not leaving it outdoors unprotected more than necessary, and re-staining it on a regular basis.
\nClean: Use a mild soapy solution. Wipe dry with a clean dry cloth.
\nMaintenance: To prevent the surface from drying out and cracking, and moisture from penetrating into the wood, we recommend you to re-stain the furniture on a regular basis, for example once or twice a year.
\nStoring: If possible, store in a cool dry place indoors. If the furniture is stored outside, cover it with a waterproof cover. After a rain or snowfall, wipe off excess water or snow from flat surfaces. Allow air to circulate to avoid condensation.',
'Materials\nFrame:\nSolid acacia wood, Acrylic stain\n\nRope:\nPolypropylene','BROMMÖ\nChaise, outdoor\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(92,
'202.085.27', 'The curved back ensures that you sit comfortably.\n\nYou can make your chair more comfortable and personal by adding a chair pad in a style you like.
\n\nFor added durability and so you can enjoy the natural expression of the wood, the furniture has been pre-treated with several layers of semi-transparent wood stain.
\n\nCushions are sold separately.\n\nUse VÅRDA wood stain, for outdoor-use when re-staining the furniture.
\n\nMay be completed with KUDDARNA, HÅLLÖ or FRÖSÖN/DUVHOLMEN chair cushion (20x20") or YTTERÖN seat/back cushion.
\n\nThis chair has been tested for home use and meets the requirements for durability and safety, set forth in the following standards: EN 581.
\n\nOnly recommended for outdoor use.\n\nDesigner\nK Hagberg/M Hagberg',
'Tested for: 243 lb\nWidth: 24 3/8 "\nDepth: 25 5/8 "\nHeight: 32 1/4 "\nSeat width: 19 1/4 "\nSeat depth: 19 1/4 "\nSeat height: 16 1/8 "',
'The best way to extend the life of your wooden outdoor furniture is by cleaning it regularly, not leaving it outdoors unprotected more than necessary, and re-staining it on a regular basis.
\nClean: Use a mild soapy solution. Wipe dry with a clean dry cloth.
\nMaintenance: To prevent the surface from drying out and cracking, and moisture from penetrating into the wood, we recommend you to re-stain the furniture on a regular basis, for example once or twice a year.
\nStoring: If possible, store in a cool dry place indoors. If the furniture is stored outside, cover it with a waterproof cover. After a rain or snowfall, wipe off excess water or snow from flat surfaces. Allow air to circulate to avoid condensation.',
'Environment\nProduct possible to recycle or use for energy recovery, if available in your community.
\nWe have clear requirements for all the wood we use, including a ban on illegally harvested wood. By 2020, we want all our wood to come from more sustainable sources, defined as certified or recycled.
\n100% renewable material. (Fixtures excluded)\n\nMaterials\nSolid acacia wood, Acrylic stain',
'ÄPPLARÖ\nArmchair, outdoor\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(93,
'002.645.38', 'The cover is easy to keep clean because it is removable and machine washable.
\n\nThe cushion has a longer life because it can be turned over and used on both sides.\n\nFits SOLLERÖN, ÄPPLARÖ and KUNGSHOLMEN seating sections.
\n\nDesigner\nIKEA of Sweden', 'Width: 24 "\nDepth: 24 "\nThickness: 3 1/8 "', 'Cushion cover\nMachine wash warm, normal cycle.
\nClose the zipper before washing.\nDo not bleach.\nTumble dry, low, normal cycle.\nIron low.\nDo not dry clean.\n\nInner cushion
\nDo not wash.\nDo not bleach.\nDo not tumble dry.\nDo not iron.\nDo not dry clean.', 
'Environment\nProduct possible to recycle or use for energy recovery, if available in your community.\n\nMaterials\nCushion cover:\n100% polyester (min. 90% recycled)
\n\nInner fabric:\n100 % polypropylene\n\nFilling:\nPolyester wadding\n\nCore filling:\nPolyurethane foam 1.5 lb/cu.ft.',
'HÅLLÖ\nSeat pad, outdoor\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(94,
'092.526.87', '
By combining different seating sections you can create a sofa in a shape and size that perfectly suits your outdoor space.
\n\nPractical storage space under the seat.\n\nThe color on the seat pad and back cushion stays fresh longer as the cover is fade resistant.
\n\nYou can just shake off water from a light rain, as the cushion cover is water repellent.\n\nThe cushion cover is easy to keep clean since it can be removed and machine washed.
\n\nYou can have a personal touch to your sofa by adding one or more decorative cushions to your style and taste.\n\nHardware to connect sections included.
\n\nMay be completed with TOSTERÖ storage bag.\n\nDesigner\nEva Lilja Löwenhielm/Jonas Hultqvist/IKEA of Sweden',
'Width: 87 3/4 "\nDepth: 56 3/4 "\nHeight: 34 5/8 "\nSeat width: 73 5/8 "\nSeat depth: 18 7/8 "\nSeat height: 17 3/8 "',
'Inner cushion\n3-seat modular sofa, outdoor\n\nDo not wash.\nDo not bleach.\nDo not tumble dry.\nDo not iron.\nDo not dry clean.\nMachine wash warm, normal cycle.
\nClose the zipper before washing.\nDo not bleach.\nTumble dry, low, normal cycle.\nIron low.\nDo not dry clean.
\nThe best way to extend the life of your outdoor furniture is by cleaning it regularly and not leaving it outdoors unprotected more than necessary.
\nClean: Use a mild soapy solution.\nMaintenance: Require no maintenance.
\nStoring: If possible, store in a cool dry place indoors. If the furniture is stored outside, cover it with a waterproof cover. After a rain or snowfall, wipe off excess water or snow from flat surfaces. Allow air to circulate to avoid condensation.',
'Environment\nCover for back cushion/cover for seat pad:\nBy using recycled polyester in this product, we consume less new raw materials and lower our environmental footprint.
\nThe yarn in this product is dope-dyed, a color method for synthetic fibers, which reduces consumption of water and dye while improving color fastness compared to traditional dyeing techniques.
\nNo perfluorinated chemicals (e.g. PFOS, PFOA, PFOSA) are used to make this product water repellent. As perfluorinated chemicals are non-degradable, it’s better for you and the environment to avoid them.
\n\nMaterials\nArmrest, outdoor\nMain parts:\nPolyethylene, Polypropylene\n\nFrame:\nSteel, Polyester powder coating\n\nOne-seat section, outdoor/ stool, outdoor
\nMain parts/ Bottom panel:\nPolyethylene, Polypropylene\n\nFrame:\nSteel, Polyester powder coating\n\nElastic webbing:\n100 % nylon
\n\nCover for back cushion/ cover for seat pad\n100% polyester (min. 90% recycled)\n\nInner back cushion\nCover/ Smolder resistant lining:
\nPolyester wadding\n\nFilling:\n100 % polyester (100% recycled)\n\nInner seat pad\nCover/ Filling/ Smolder resistant lining:\nPolyester wadding
\n\nCore filling:\nPolyurethane foam', 'Packages: 19\n\nDUVHOLMEN\ninner back cushion\nPackage(s): 3\n\nSOLLERÖN\narmrest, outdoor\nPackage(s): 1
\n\nFRÖSÖN\ncover for back cushion\nPackage(s): 3\n\nSOLLERÖN\nstool, outdoor\nPackage(s): 1\n\nDUVHOLMEN\ninner seat pad\nPackage(s): 4
\n\nSOLLERÖN\none-seat section, outdoor\nPackage(s): 3\n\nFRÖSÖN\ncover for seat pad\nPackage(s): 4'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(95,
'390.539.31', 'The drop-leaves can be folded and removed, so you can quickly adjust the table size according to your needs.
\n\nThe hole in the middle of the table top keeps your umbrella in place.\n\nThe curved back ensures that you sit comfortably.
\n\nFor added durability and so you can enjoy the natural expression of the wood, the furniture has been pre-treated with several layers of semi-transparent wood stain.
\n\nCushions are sold separately.\n\nUse VÅRDA wood stain, for outdoor-use when re-staining the furniture.\n\nOnly recommended for outdoor use.
\n\nDesigner\nK Hagberg/M Hagberg', null, 'Drop-leaf table, outdoor/bench, outdoor/bench with backrest, outdoor
\nThe best way to extend the life of your wooden outdoor furniture is by cleaning it regularly, not leaving it outdoors unprotected more than necessary, and re-staining it on a regular basis.
\nClean: Use a mild soapy solution. Wipe dry with a clean dry cloth.
\nMaintenance: To prevent the surface from drying out and cracking, and moisture from penetrating into the wood, we recommend you to re-stain the furniture on a regular basis, for example once or twice a year.
\nStoring: If possible, store in a cool dry place indoors. If the furniture is stored outside, cover it with a waterproof cover. After a rain or snowfall, wipe off excess water or snow from flat surfaces. Allow air to circulate to avoid condensation.',
'Environment\nDrop-leaf table, outdoor/bench, outdoor/bench with backrest, outdoor:\n100% renewable material. (Fixtures excluded)
\nWe have clear requirements for all the wood we use, including a ban on illegally harvested wood. By 2020, we want all our wood to come from more sustainable sources, defined as certified or recycled.
\nProduct possible to recycle or use for energy recovery, if available in your community.\n\nMaterials\nSolid acacia wood, Acrylic stain', 
'Packages: 3\n\nÄPPLARÖ\nbench, outdoor\nPackage(s): 1\n\nÄPPLARÖ\ndrop-leaf table, outdoor\nPackage(s): 1\n\nÄPPLARÖ\nbench with backrest, outdoor\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(96,
'900.954.28', 'Easy to fold up and put away.\n\nFor added durability, and so you can enjoy the natural expression of the wood, the furniture has been pre-treated with a layer of semi-transparent wood stain.
\n\nCushions are sold separately.\n\nUse VÅRDA wood stain, for outdoor-use when re-staining the furniture.
\n\nMay be completed with KUDDARNA chair cushion (12⅝x14⅛"), FRÖSÖN/DUVHOLMEN or YTTERÖN chair cushion or BENÖ chair pad (dia. 13⅜").
\n\nThis chair has been tested for home use and meets the requirements for durability and safety, set forth in the following standards: EN 581.
\n\nOnly recommended for outdoor use.\n\nDesigner\nIKEA of Sweden', 'Tested for: 243 lb\nWidth: 15 3/8 "\nDepth: 15 3/4 "\nHeight: 31 1/8 "
\nSeat width: 15 3/8 "\nSeat depth: 11 "\nSeat height: 17 3/4 "', 
'The best way to extend the life of your wooden outdoor furniture is by cleaning it regularly, not leaving it outdoors unprotected more than necessary, and re-staining it on a regular basis.
\nClean: Use a mild soapy solution. Wipe dry with a clean dry cloth.
\nMaintenance: To prevent the surface from drying out and cracking, and moisture from penetrating into the wood, we recommend you to re-stain the furniture on a regular basis, for example once or twice a year.
\nStoring: If possible, store in a cool dry place indoors. If the furniture is stored outside, cover it with a waterproof cover. After a rain or snowfall, wipe off excess water or snow from flat surfaces. Allow air to circulate to avoid condensation.',
'Environment\nWe have clear requirements for all the wood we use, including a ban on illegally harvested wood. By 2020, we want all our wood to come from more sustainable sources, defined as certified or recycled.
\nThe material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.
\nRenewable material (wood).\n\nMaterials\nSeat/ Back:\nSolid acacia wood, Acrylic stain\n\nLeg/ Seat rail/ Support:\nSteel, Polyester powder coating\n\nFeet:\nPolypropylene',
'TÄRNÖ\nChair, outdoor\nackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(97,
'704.114.99', 'TOSTERÖ waterproof covers will protect your outdoor furniture from rain, sun, snow, dirt, dust, and pollen when not in use.
\n\nProtecting your outdoor furniture with a waterproof cover is an easy and effective way to keep it looking fresh and new longer, before any maintenance is needed.
\n\nFits for example outdoor 3-seat corner sofas and a coffee table with total max. length 102", max. width 65" and max. height 34".
\n\nFits for example outdoor 3-seat sofas together with an armchair and a coffee table with total max. length 102", max. width 65" and max. height 34".
\n\nThe cover is not reversible. The glossy side must always face in, towards the furniture.
\n\nMake sure the furniture is completely dry before putting on the cover.
\n\nTo prevent condensation from forming, leave the cover open slightly at the bottom permitting air to circulate.
\n\nTo keep the cover in place during windy days, tuck in the lower edge underneath the corners of the furniture.
\n\nYou can use the cover to protect the furniture with cushions or pads during the outdoor season. During the off-season we recommend to store the cushions and pads in a dry, cool place indoors.
\n\nStorage bag with drawstring included.\n\nDesigner\nIKEA of Sweden',
'Length: 102 3/8 "\nWidth: 65 "\nHeight: 33 1/2 "', 'Cover\n\nHand wash warm water.\nDo not bleach.\nDo not tumble dry.\nDo not iron.\nDo not dry clean.',
'Environment\nNo perfluorinated chemicals (e.g. PFOS, PFOA, PFOSA) are used to make this product waterproof. As perfluorinated chemicals are non-degradable, it’s better for you and the environment to avoid them.
\n\nMaterials\n100 % polyester', 'TOSTERÖ\n\nCover for outdoor furniture\nPackage(s): 1'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(98,
'192.622.90', 'The furniture is made of eucalyptus, a naturally durable and sturdy hardwood because of the high density of its wood fibers.
\n\nFor added durability and so you can enjoy the natural expression of the wood, the furniture has been pre-treated with several layers of semi-transparent wood stain.
\n\nThe seat cushion provides great comfort, thanks to its thick high resilience foam filling.\n\nYou can just shake off water from a light rain, as the cushion cover is water repellent.
\n\nThe cushion covers are dope dyed, a process that reduces consumption of water and dyestuff while improving color fastness compared to traditional dyeing techniques.
\n\nThe cover on the seat pad and back cushion is easy to keep clean and fresh, as you can take it off and machine wash it.\n\nOnly recommended for outdoor use.
\n\nUse VÅRDA wood stain, for outdoor-use when re-staining the furniture.\n\nDesigner\nEva Lilja Löwenhielm/IKEA of Sweden', null, 
'Furniture\n4-seat conversation set, outdoor
\n\nThe best way to extend the life of your wooden outdoor furniture is by cleaning it regularly, not leaving it outdoors unprotected more than necessary, and re-staining it on a regular basis.
\nClean: Use a mild soapy solution. Wipe dry with a clean dry cloth.
\nMaintenance: To prevent the surface from drying out and cracking, and moisture from penetrating into the wood, we recommend you to re-stain the furniture on a regular basis, for example once or twice a year.
\nStoring: If possible, store in a cool dry place indoors. If the furniture is stored outside, cover it with a waterproof cover. After a rain or snowfall, wipe off excess water or snow from flat surfaces. Allow air to circulate to avoid condensation.
\nMachine wash warm, normal cycle.\nClose the zipper before washing.\nDo not bleach.\nTumble dry, low, normal cycle.\nIron low.\nDo not dry clean.
\nDo not wash.\nDo not bleach.\nDo not tumble dry.\nDo not iron.\nDo not dry clean.', 
'Environment\nCover for back cushion/cover for seat pad:\nBy using recycled polyester in this product, we consume less new raw materials and lower our environmental footprint.
\nThe yarn in this product is dope-dyed, a color method for synthetic fibers, which reduces consumption of water and dye while improving color fastness compared to traditional dyeing techniques.
\nNo perfluorinated chemicals (e.g. PFOS, PFOA, PFOSA) are used to make this product water repellent. As perfluorinated chemicals are non-degradable, it’s better for you and the environment to avoid them.
\n\nArmchair, outdoor/coffee table, outdoor/loveseat, outdoor:\n100% renewable material. (Fixtures excluded)
\nWe have clear requirements for all the wood we use, including a ban on illegally harvested wood. By 2020, we want all our wood to come from more sustainable sources, defined as certified or recycled.
\nProduct possible to recycle or use for energy recovery, if available in your community.
\n\nMaterials\nInner back cushion\nCover/ Smolder resistant lining:\nPolyester wadding\n\nFilling:\n100 % polyester (100% recycled)
\n\nInner seat pad\nCover/ Filling/ Smolder resistant lining:\nPolyester wadding\n\nCore filling:\nPolyurethane foam\n\nCover for back cushion/ cover for seat pad
\n100% polyester (min. 90% recycled)\n\nArmchair, outdoor/ coffee table, outdoor/ loveseat, outdoor\nSolid eucalyptus wood, Acrylic stain',
'Packages: 20\n\nDUVHOLMEN\ninner back cushion\nPackage(s): 4\n\nKLÖVEN\narmchair, outdoor\nPackage(s): 2\n\nFRÖSÖN\ncover for back cushion
\nPackage(s): 4\n\nDUVHOLMEN\ninner seat pad\nPackage(s): 4\n\nKLÖVEN\ncoffee table, outdoor\nPackage(s): 1\n\nKLÖVEN\nloveseat, outdoor
\nPackage(s): 1\n\nFRÖSÖN\ncover for seat pad\nPackage(s): 4'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(99,
'392.879.25', 'By combining different seating sections you can create a sofa in a shape and size that perfectly suits your outdoor space.
\n\nPractical storage space under the seat.\n\nThe color on the seat pad and back cushion stays fresh longer as the cover is fade resistant.
\n\nYou can just shake off water from a light rain, as the cushion cover is water repellent.\n\nThe cushion cover is easy to keep clean since it can be removed and machine washed.
\n\nYou can have a personal touch to your sofa by adding one or more decorative cushions to your style and taste.\n\nHardware to connect sections included.
\n\nMay be completed with TOSTERÖ storage bag.\n\nDesigner\nEva Lilja Löwenhielm/Jonas Hultqvist/IKEA of Sweden', null, 
'Inner cushion\n4-seat conversation set, outdoor
\n\nDo not wash.\nDo not bleach.\nDo not tumble dry.\nDo not iron.\nDo not dry clean.\nMachine wash warm, normal cycle.\nClose the zipper before washing.
\nDo not bleach.\nTumble dry, low, normal cycle.\nIron low.\nDo not dry clean.
\nThe best way to extend the life of your outdoor furniture is by cleaning it regularly and not leaving it outdoors unprotected more than necessary.
\nClean: Use a mild soapy solution.\nMaintenance: Require no maintenance.
\nStoring: If possible, store in a cool dry place indoors. If the furniture is stored outside, cover it with a waterproof cover. After a rain or snowfall, wipe off excess water or snow from flat surfaces. Allow air to circulate to avoid condensation.',
'Environment\nCover for back cushion/cover for seat pad:
\nBy using recycled polyester in this product, we consume less new raw materials and lower our environmental footprint.
\nThe yarn in this product is dope-dyed, a color method for synthetic fibers, which reduces consumption of water and dye while improving color fastness compared to traditional dyeing techniques.
\nNo perfluorinated chemicals (e.g. PFOS, PFOA, PFOSA) are used to make this product water repellent. As perfluorinated chemicals are non-degradable, it’s better for you and the environment to avoid them.
\n\nMaterials\nInner seat pad\nCover/ Filling/ Smolder resistant lining:\nPolyester wadding\n\nCore filling:\nPolyurethane foam
\n\nInner back cushion\nCover/ Smolder resistant lining:\nPolyester wadding\n\nFilling:\n100 % polyester (100% recycled)\n\nCover for back cushion/ cover for seat pad
\n100% polyester (min. 90% recycled)\n\nArmrest, outdoor\nMain parts:\nPolyethylene, Polypropylene\n\nFrame:\nSteel, Polyester powder coating
\n\nOne-seat section, outdoor\nMain parts/ Bottom panel:\nPolyethylene, Polypropylene\n\nFrame:\nSteel, Polyester powder coating\n\nElastic webbing:\n100 % nylon
\n\nCoffee table, outdoor\nUnderframe:\nAluminum, Polyester powder coating\n\nUpper frame/ Top panel:\nSteel, Polyester powder coating\n\nWeaving:\nPolyethylene, Polypropylene
\n\nTable top:\nTempered glass',
'Packages: 24\n\nDUVHOLMEN\ninner back cushion\nPackage(s): 4\n\nFRÖSÖN\ncover for back cushion\nPackage(s): 4\n\nDUVHOLMEN\ninner seat pad
\nPackage(s): 4\n\nSOLLERÖN\ncoffee table, outdoor\nPackage(s): 1\n\nSOLLERÖN\none-seat section, outdoor\nPackage(s): 4
\n\nSOLLERÖN\narmrest, outdoor\nPackage(s): 3\n\nFRÖSÖN\ncover for seat pad\nPackage(s): 4'); 
INSERT INTO items(id, box_number, product_description, product_size, care_instructions, environment_and_materials, package_details) VALUES(100,
'292.875.63', 'The color stays fresh longer as the cover is fade resistant.\n\nThe cover is easy to keep clean because it is removable and machine washable.
\n\nWhen your mood changes, you can quickly change the look of your outdoor space with the separate OTTERÖN ottoman covers.\n\nDesigner\nIKEA of Sweden/Maria Vinka',
'Height: 16 1/8 "\nDiameter: 18 7/8 "', 'Pouffe cover, indoor/outdoor\nThe best way to extend the life of your product is to clean it regularly and store it in a cool, dry place indoors, or in a storage bag or storage box when not in use.
\nMake sure the product is completely dry before storing it away in a storage bag or storage box.
\n\nCover\nPouffe, in/outdoor\nMachine wash, warm, durable-press cycle.\nDo not bleach.\nTumble dry, low, normal cycle.\nIron low.\nDo not dry clean.',
'Environment\nPouffe cover, indoor/outdoor:\nThis product is dope-dyed, a dyeing technique for synthetic fibers, which reduces consumption of water and dye while improving color fastness compared to traditional dyeing techniques.
\n\nMaterials\nPouffe cover, indoor/outdoor\n100 % polypropylene
\n\nPouffe frame, indoor/outdoor\nFrame/ Rim:\nSteel, Polyester powder coating\n\nRivet:\nSteel, Galvanized\n\nFeet:\nPolyamide',
'Packages: 2\n\nINNERSKÄR\npouffe frame, indoor/outdoor\nPackage(s): 1\n\nOTTERÖN\npouffe cover, indoor/outdoor\nPackage(s): 1'); 
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (1, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (1, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (1, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (1, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (1, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (2, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (2, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (2, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (2, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (2, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (3, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (3, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (3, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (3, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (3, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (4, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (4, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (4, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (4, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (4, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (5, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (5, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (5, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (5, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (5, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (6, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (6, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (6, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (6, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (6, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (7, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (7, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (7, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (7, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (7, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (8, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (8, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (8, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (8, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (8, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (9, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (9, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (9, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (9, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (9, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (10, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (10, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (10, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (10, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (10, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (11, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (11, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (11, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (11, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (11, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (12, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (12, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (12, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (12, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (12, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (13, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (13, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (13, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (13, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (13, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (14, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (14, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (14, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (14, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (14, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (15, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (15, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (15, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (15, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (15, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (16, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (16, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (16, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (16, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (16, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (17, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (17, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (17, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (17, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (17, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (18, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (18, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (18, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (18, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (18, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (19, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (19, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (19, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (19, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (19, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (20, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (20, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (20, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (20, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (20, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (21, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (21, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (21, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (21, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (21, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (22, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (22, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (22, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (22, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (22, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (23, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (23, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (23, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (23, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (23, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (24, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (24, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (24, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (24, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (24, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (25, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (25, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (25, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (25, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (25, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (26, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (26, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (26, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (26, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (26, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (27, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (27, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (27, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (27, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (27, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (28, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (28, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (28, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (28, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (28, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (29, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (29, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (29, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (29, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (29, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (30, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (30, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (30, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (30, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (30, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (31, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (31, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (31, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (31, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (31, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (32, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (32, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (32, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (32, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (32, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (33, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (33, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (33, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (33, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (33, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (34, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (34, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (34, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (34, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (34, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (35, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (35, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (35, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (35, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (35, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (36, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (36, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (36, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (36, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (36, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (37, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (37, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (37, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (37, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (37, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (38, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (38, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (38, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (38, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (38, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (39, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (39, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (39, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (39, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (39, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (40, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (40, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (40, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (40, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (40, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (41, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (41, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (41, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (41, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (41, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (42, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (42, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (42, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (42, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (42, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (43, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (43, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (43, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (43, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (43, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (44, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (44, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (44, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (44, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (44, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (45, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (45, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (45, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (45, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (45, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (46, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (46, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (46, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (46, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (46, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (47, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (47, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (47, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (47, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (47, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (48, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (48, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (48, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (48, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (48, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (49, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (49, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (49, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (49, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (49, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (50, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (50, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (50, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (50, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (50, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (51, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (51, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (51, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (51, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (51, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (52, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (52, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (52, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (52, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (52, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (53, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (53, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (53, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (53, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (53, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (54, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (54, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (54, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (54, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (54, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (55, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (55, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (55, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (55, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (55, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (56, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (56, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (56, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (56, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (56, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (57, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (57, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (57, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (57, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (57, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (58, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (58, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (58, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (58, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (58, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (59, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (59, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (59, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (59, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (59, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (60, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (60, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (60, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (60, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (60, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (61, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (61, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (61, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (61, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (61, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (62, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (62, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (62, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (62, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (62, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (63, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (63, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (63, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (63, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (63, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (64, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (64, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (64, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (64, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (64, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (65, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (65, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (65, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (65, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (65, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (66, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (66, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (66, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (66, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (66, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (67, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (67, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (67, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (67, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (67, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (68, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (68, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (68, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (68, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (68, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (69, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (69, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (69, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (69, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (69, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (70, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (70, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (70, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (70, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (70, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (71, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (71, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (71, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (71, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (71, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (72, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (72, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (72, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (72, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (72, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (73, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (73, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (73, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (73, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (73, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (74, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (74, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (74, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (74, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (74, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (75, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (75, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (75, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (75, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (75, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (76, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (76, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (76, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (76, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (76, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (77, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (77, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (77, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (77, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (77, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (78, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (78, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (78, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (78, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (78, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (79, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (79, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (79, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (79, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (79, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (80, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (80, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (80, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (80, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (80, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (81, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (81, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (81, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (81, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (81, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (82, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (82, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (82, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (82, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (82, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (83, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (83, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (83, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (83, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (83, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (84, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (84, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (84, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (84, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (84, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (85, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (85, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (85, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (85, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (85, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (86, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (86, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (86, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (86, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (86, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (87, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (87, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (87, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (87, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (87, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (88, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (88, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (88, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (88, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (88, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (89, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (89, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (89, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (89, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (89, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (90, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (90, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (90, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (90, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (90, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (91, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (91, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (91, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (91, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (91, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (92, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (92, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (92, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (92, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (92, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (93, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (93, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (93, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (93, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (93, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (94, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (94, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (94, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (94, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (94, "OscarG.", "2019-10-18", "So many complements!", "SO many people have complemented me on this item! ah! It's great!", 5, 5, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (95, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (95, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (95, "JD", "2019-05-03", "Wearing down already", "We love the look of it, but the quality is lacking. Unfortunately, after only 6 months it is already showing wear...", 2, 2, 
            1, 5, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (95, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (95, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (96, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (96, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (96, "Kelly Clarkson", "2019-06-29", "Got this as a birthday gift, and I am so pleased!", "Wow! This looks looks beautiful in my house!", 5, 4, 
            4, 5, 3, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (96, "amyG", "2019-10-30", "This thing is great!", "Exceeded expectations. It seriously fit our home perfectly", 5, 5, 
            5, 5, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (96, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (97, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (97, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (97, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (97, "Sven", "2019-09-01", "I'm a happy clam!", "Great product, great price. IKEA for the win!", 4, 5, 
            5, 4, 5, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (97, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (98, "Elsa", "2019-10-10", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 1, 3, 
            3, 5, 1, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (98, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (98, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (98, "McLovin", "2019-10-29", "Missing parts! ", "I spent four hours trying to put this together, only to realize I was missing a part! Ugh. I was able to get them, but had to return to the store.", 3, 3, 
            3, 5, 1, 2, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (98, "the Mandalorian", "2019-09-03", "Not a fan...", "Didn't fit my space right, and had a knick in it right out of the box. Just not for me.", 3, 1, 
            2, 3, 2, 1, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (99, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (99, "Ivan Ivanovich", "2019-01-16", "Beautiful piece, but so hard to assemble. ", "I love how this looks in my home! I could not be happier with it now. But boy did it give me trouble with assembly!", 4, 5, 
            4, 5, 2, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (99, "Jason Bourne", "2019-08-11", "Did not end up meeting our needs.", "From the photos, I thought it would look different than it did. Not a bad product, but not suited for my needs", 2, 3, 
            4, 2, 4, 2, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (99, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (99, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (100, "Joe Pumpkin", "2019-12-01", "Nice fit to our home", "Overall we are satisfied with it. However, I do wish it was easier to assemble. Must have spent three hours putting it together!", 4, 4, 
            5, 4, 2, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (100, "Will Ferrell", "2019-07-18", "Assembly was a breeze", "I was worried about assembling my own furniture for the first time, but their instructions were SO easy to follow! This product is great!", 5, 4, 
            5, 4, 5, 4, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (100, "Olaf", "2019-05-19", "Next time I'll order with the assembly!", "Their instructions were good, but I guess I have two left thumbs and coulnd't get all the pieces together. Finally got things together with my son's help, and I love it!", 5, 5, 
            4, 4, 2, 3, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (100, "betty C", "2019-11-25", "I love it!", "This was perfect for us. Even my mother-in-law complemented me on it(and she usually hates everything I pick)!", 5, 4, 
            4, 5, 3, 5, 0, 0, 1);
INSERT INTO reviews (product_id, user_name, posted_date, review_title, review_text, overall_rating, product_value_for_money, product_quality, product_appearance, product_ease_of_assembly, product_works_as_expected, review_helpful_yes, review_helpful_no, product_recommended) 
        VALUES (100, "Left Shark", "2019-03-12", "OK, but feels a little cheap.", "I ordered online, and was hopigng it would feel higher quality. Alas, here we are. But it works, so I'm keeping it.", 2, 2, 
            3, 3, 4, 4, 0, 0, 0);



























