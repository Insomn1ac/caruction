CREATE TABLE IF NOT EXISTS users
(
    id         SERIAL PRIMARY KEY,
    name       VARCHAR(100)            NOT NULL,
    email      VARCHAR(100)            NOT NULL UNIQUE,
    password   VARCHAR(100)            NOT NULL,
    wallet_id  INTEGER                 NOT NULL UNIQUE,
    registered TIMESTAMP DEFAULT now() NOT NULL,
    enabled    BOOLEAN   DEFAULT TRUE  NOT NULL
);

