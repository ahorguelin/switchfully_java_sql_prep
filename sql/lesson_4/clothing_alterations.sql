CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);
    
INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");
    
ALTER TABLE clothes ADD COLUMN price NUMERIC;

SELECT * FROM clothes;

UPDATE clothes
SET price = 10 WHERE type = "dress";

UPDATE clothes
SET price = 20 WHERE type = "pants";

UPDATE clothes
SET price = 30 WHERE type = "blazer";

SELECT * FROM clothes;

INSERT INTO clothes VALUES (4, "dress", "best dress", 1000);

SELECT * FROM clothes;