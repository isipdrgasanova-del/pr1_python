CREATE DATABASE "Cookie_run_kingdom";

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    login VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE cookie_characters (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    image_url VARCHAR(500),
    user_id INT REFERENCES users(id) ON DELETE SET NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE character_skills (
    id SERIAL PRIMARY KEY,
    character_id INT REFERENCES cookie_characters(id) ON DELETE CASCADE,
    skill_name VARCHAR(100) NOT NULL,
    skill_type VARCHAR(50),
    position VARCHAR(20)
);

CREATE TABLE character_classes (
    id SERIAL PRIMARY KEY,
    class_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE character_class_link (
    character_id INT REFERENCES cookie_characters(id) ON DELETE CASCADE,
    class_id INT REFERENCES character_classes(id) ON DELETE CASCADE,
    PRIMARY KEY (character_id, class_id)
);