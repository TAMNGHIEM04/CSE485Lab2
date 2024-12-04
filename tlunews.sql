<<<<<<< HEAD
use TLUnews
CREATE TABLE users (
    id INT PRIMARY KEY ,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role INT NOT NULL CHECK (role IN (0, 1))
);

CREATE TABLE categories (
    id INT PRIMARY KEY ,
    name VARCHAR(255) NOT NULL
);
CREATE TABLE news (
    id INT PRIMARY KEY ,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    image VARCHAR(255),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE
);
=======
use TLUnews
CREATE TABLE users (
    id INT PRIMARY KEY ,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role INT NOT NULL CHECK (role IN (0, 1))
);

CREATE TABLE categories (
    id INT PRIMARY KEY ,
    name VARCHAR(255) NOT NULL
);
CREATE TABLE news (
    id INT PRIMARY KEY ,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    image VARCHAR(255),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE
);
>>>>>>> 0d7402ae12c4c70275ce0b8c9c61975bec6a8f1d
