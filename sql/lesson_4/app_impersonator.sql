/* What does the app's SQL look like? */
-- All SQL statements are my own. Dummy data was generated using ChatGPT by providing it the Schema I created.
-- Creating an app that stores bread recipe
CREATE TABLE ingredients (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT
);

CREATE TABLE recipe(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT,
description TEXT
);

CREATE TABLE recipe_ingredient(
id INTEGER PRIMARY KEY AUTOINCREMENT,
recipe_id INTEGER,
ingredient_id INTEGER,
weight NUMERIC
);

-- Dummy data for the ingredients table
INSERT INTO ingredients (name) VALUES
('Flour'),
('Water'),
('Yeast'),
('Salt'),
('Sugar'),
('Butter');

-- Dummy data for the recipe table
INSERT INTO recipe (name, description) VALUES
('Classic White Bread', 'A simple recipe for making traditional white bread.'),
('Whole Wheat Bread', 'A healthier option made with whole wheat flour.'),
('Multigrain Bread', 'Packed with various grains and seeds for added texture and flavor.'),
('Honey Oat Bread', 'Sweetened with honey and topped with oats for a delightful twist.'),
('Garlic Herb Bread', 'Infused with garlic and herbs for a savory kick.');

-- Dummy data for the recipe_ingredient table curtesy of ChatGPT. What a baker!
INSERT INTO recipe_ingredient (recipe_id, ingredient_id, weight) VALUES
(1, 1, 500), -- Classic White Bread: Flour (500g)
(1, 2, 300), -- Classic White Bread: Water (300g)
(1, 3, 10),  -- Classic White Bread: Yeast (10g)
(1, 4, 8),   -- Classic White Bread: Salt (8g)
(1, 5, 20),  -- Classic White Bread: Sugar (20g)
(1, 6, 50),  -- Classic White Bread: Butter (50g)

(2, 1, 400), -- Whole Wheat Bread: Flour (400g)
(2, 2, 250), -- Whole Wheat Bread: Water (250g)
(2, 3, 8),   -- Whole Wheat Bread: Yeast (8g)
(2, 4, 7),   -- Whole Wheat Bread: Salt (7g)
(2, 5, 15),  -- Whole Wheat Bread: Sugar (15g)
(2, 6, 40),  -- Whole Wheat Bread: Butter (40g)

(3, 1, 450), -- Multigrain Bread: Flour (450g)
(3, 2, 280), -- Multigrain Bread: Water (280g)
(3, 3, 9),   -- Multigrain Bread: Yeast (9g)
(3, 4, 8),   -- Multigrain Bread: Salt (8g)
(3, 5, 18),  -- Multigrain Bread: Sugar (18g)
(3, 6, 45),  -- Multigrain Bread: Butter (45g)

(4, 1, 350), -- Honey Oat Bread: Flour (350g)
(4, 2, 220), -- Honey Oat Bread: Water (220g)
(4, 3, 7),   -- Honey Oat Bread: Yeast (7g)
(4, 4, 6),   -- Honey Oat Bread: Salt (6g)
(4, 5, 25),  -- Honey Oat Bread: Sugar (25g)
(4, 6, 35),  -- Honey Oat Bread: Butter (35g)

(5, 1, 400), -- Garlic Herb Bread: Flour (400g)
(5, 2, 270), -- Garlic Herb Bread: Water (270g)
(5, 3, 8),   -- Garlic Herb Bread: Yeast (8g)
(5, 4, 7),   -- Garlic Herb Bread: Salt (7g)
(5, 5, 20),  -- Garlic Herb Bread: Sugar (20g)
(5, 6, 30);  -- Garlic Herb Bread: Butter (30g)

SELECT * FROM recipe;

UPDATE recipe
SET description = "Infused with garlic and herbs for a savory kick and that signature Dragon's Breath"
WHERE name LIKE "%Garlic%";

SELECT * FROM recipe;

BEGIN TRANSACTION;
DELETE FROM recipe WHERE id = 3;
DELETE FROM recipe_ingredient WHERE recipe_id = 3;
COMMIT;

SELECT * FROM recipe;
SELECT * FROM recipe_ingredient;