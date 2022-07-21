-- +goose Up
CREATE TABLE employee (
    id int NOT NULL PRIMARY KEY,
    username text,
    name text,
    surname text,
	jobtitleid int
);

INSERT INTO employee VALUES
(0, 'root', '', ''),
(1, 'vojtechvitek', 'Vojtech', 'Vitek');

-- +goose Down
DROP TABLE employee;
