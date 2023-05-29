CREATE TABLE kanban(
    kanban_id SERIAL PRIMARY KEY,
    public_id VARCHAR(255),
    title VARCHAR(255),
    content VARCHAR(255),
    is_done BOOLEAN DEFAULT FALSE
);

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    public_id VARCHAR(255),
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255)
);