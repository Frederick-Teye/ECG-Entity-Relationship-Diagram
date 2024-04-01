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

CREATE TABLE meter (
    meter_id INT NOT NULL,
    installation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    meter_type VARCHAR(255),
    customer_id INT NOT NULL,
    transformer_id INT NOT NULL,
    FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id),
    FOREIGN KEY (transformer_id)
        REFERENCES transformer (transformer_id),
    PRIMARY KEY (meter_id)
);

CREATE TABLE transformer (
    transformer_id INT NOT NULL,
    location VARCHAR(255) NOT NULL,
    capacity FLOAT,
    trans_line_id INT,
    FOREIGN KEY (trans_line_id)
        REFERENCES transmission_line (trans_line_id),
    PRIMARY KEY (transformer_id)
);
