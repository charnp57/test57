-- +goose Up
-- +goose StatementBegin
UPDATE employee SET username='admin' WHERE username='root';
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
UPDATE employee SET username='root' WHERE username='admin';
-- +goose StatementEnd
