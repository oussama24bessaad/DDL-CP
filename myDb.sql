create database myDb;
use myDb;
CREATE TABLE customer (
	customer_id VARCHAR(20) ,
	customer_name VARCHAR(20) NOT NULL,
	customer_phone int,

    constraint customer_pk PRIMARY KEY(customer_id)
);
describe customer;
CREATE TABLE product (
	product_id VARCHAR(20) ,
	product_name VARCHAR(20) NOT NULL,
	price float check(price > 0),

    constraint product_pk PRIMARY KEY(product_id)
);


CREATE TABLE orders (
    customer_id VARCHAR(20),
	product_id VARCHAR(20) ,
	quantity int,
	total_amount int,

    CONSTRAINT ordercustomer_fk FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    CONSTRAINT orderproduct_fk FOREIGN KEY (product_id) REFERENCES product (product_id)
);

alter Table product add category VARCHAR(20);
describe product;
alter table orders add orderdate DATE default  (DATE(CURRENT_TIMESTAMP)) ;
describe orders;
