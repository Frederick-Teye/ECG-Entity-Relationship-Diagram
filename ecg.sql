CREATE DATABASE ecg_db;

CREATE TABLE customer (
    customer_id INT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255) NOT NULL,
    email_address VARCHAR(255),
    customer_type VARCHAR(255) NOT NULL,
    PRIMARY KEY (customer_id)
);