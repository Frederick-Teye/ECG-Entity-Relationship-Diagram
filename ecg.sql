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
    PRIMARY KEY (meter_id),
    FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id),
    FOREIGN KEY (transformer_id)
        REFERENCES transformer (transformer_id)
);

CREATE TABLE transformer (
    transformer_id INT NOT NULL,
    location VARCHAR(255) NOT NULL,
    capacity FLOAT,
    transmission_line_id INT,
    PRIMARY KEY (transformer_id),
    FOREIGN KEY (transmission_line_id)
        REFERENCES transmission_line (line_id)
);

CREATE TABLE billing_system (
    invoice_number INT NOT NULL,
    amount_due FLOAT NOT NULL,
    billing_period TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id),
    PRIMARY KEY (invoice_number)
);

CREATE TABLE transmission_line (
    line_id INT NOT NULL,
    voltage_level FLOAT NOT NULL,
    legnth FLOAT NOT NULL,
    substation_id INT NOT NULL,
    PRIMARY KEY (line_id),
    FOREIGN KEY (substation_id)
        REFERENCES substation (station_id)
);

CREATE TABLE substation (
    station_id INT NOT NULL,
    location VARCHAR(255),
    capacity FLOAT,
    PRIMARY KEY (station_id)
);

CREATE TABLE employee (
    ssn INT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    birth_date DATE NOT NULL,
    salary FLOAT NOT NULL,
    address VARCHAR(255) NOT NULL,
    sex VARCHAR(255),
    job_role VARCHAR(255) NOT NULL,
    substation INT NOT NULL,
    PRIMARY KEY (snn),
    FOREIGN KEY (substation)
        REFERENCES substation (station_id)
)