CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password_hash TEXT,
    provider VARCHAR(50) DEFAULT 'local'
);

CREATE TABLE roles (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(50)
);

CREATE TABLE user_roles (
    user_id INT,
    role_id INT
);

CREATE TABLE refresh_tokens (
    token_id SERIAL PRIMARY KEY,
    user_id INT,
    token TEXT,
    expires_at TIMESTAMP
);

CREATE TABLE login_attempts (
    attempt_id SERIAL PRIMARY KEY,
    email VARCHAR(255),
    success BOOLEAN,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
