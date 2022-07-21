-- +goose NO TRANSACTION
-- +goose Up
CREATE TABLE jobtitle (
    id int NOT NULL,
    title text,
    body text,
    PRIMARY KEY(id)
);
ALTER TABLE employee
ADD FOREIGN KEY (jobtitleid) REFERENCES jobtitle(id);
-- +goose Down
DROP TABLE jobtitle;
