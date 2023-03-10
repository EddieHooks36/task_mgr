-- Create Table
CREATE TABLE status(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(256)
)
CREATE TABLE task (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    summary VARCHAR (256),
    description TEXT,
    status INTEGER,
    active BOOLEAN DEFAULT 1,
    FOREIGN KEY (status) REFERENCES status (id)
);


-- Populate status table
INSERT INTO status(name) VALUES ("to do");
INSERT INTO status(name) VALUES ("in progress");
INSERT INTO status(name) VALUES ("done");


--  Add dummy data to task
INSERT INTO task(
    summary,
    description,
    status_id
) VALUES (
    "Do the laundry",
    "Put clothes in the washing machine",
    1
);

INSERT INTO task(
    summary,
    description,
   status_id
) VALUES (
    "Buy groceries",
    "Detergent, produce",
    1
);

INSERT INTO task(
    summary,
    description,
    status_id
) VALUES (
    "Clean shoes",
    "Put shoes a way",
    1
);