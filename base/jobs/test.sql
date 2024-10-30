CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    password VARCHAR(128) NOT NULL,
    enabled CHAR(1) CHECK (ENABLED IN ('Y','N') ) NOT NULL
);
CREATE TABLE authorities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(128) NOT NULL
);
CREATE TABLE user_roles (
    user_id Int,
    role_id Int,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (role_id) REFERENCES authorities(id)
);

INSERT INTO authorities (name) values ('ADMIN'), ('BASIC');
INSERT INTO users (id, password, enabled) VALUES(1, '$2a$16$vd2hWbMqai3SLPH7NBn7texieaWtri7oKFV9UWjEiS/f8eeI535iG', 'Y');
INSERT INTO user_roles (user_id, role_id) VALUES(1,1),(1,2);