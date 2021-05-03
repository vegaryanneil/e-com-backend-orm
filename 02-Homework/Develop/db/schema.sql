-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE category (
    id INTEGER NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)

);

CREATE TABLE product (
    id INTEGER NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(30) NOT NULL,
    price DECIMAL(2) NOT NULL,
    stock INTEGER NOT NULL DEFAULT 10,
    category_id INTEGER AUTO_INCREMENT,
    FOREIGN KEY (category_id) REFERENCES category(id),
    PRIMARY KEY (id)
);

CREATE TABLE tag (
    id INTEGER NOT NULL AUTO_INCREMENT,
    tag_name VARCHAR(30),
    PRIMARY KEY (id)
);


CREATE TABLE producttag (
    id INTEGER NOT NULL AUTO_INCREMENT,
    product_id INTEGER NOT NULL AUTO_INCREMENT,
    FOREIGN KEY (product_id) REFERENCES product(id),
    tag_id INTEGER NOT NULL AUTO_INCREMENT ,
    FOREIGN KEY (tag_id) REFERENCES tag(id),
    PRIMARY KEY (id)
);




SELECT * FROM ecommerce_db.category;
SELECT * FROM ecommerce_db.product;
SELECT * FROM ecommerce_db.producttag;
SELECT * FROM ecommerce_db.tag;