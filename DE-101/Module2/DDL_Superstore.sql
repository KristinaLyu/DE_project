
CREATE TABLE calendar_dim
(
 order_date date NOT NULL ,
 ship_date  date NOT NULL ,
 year       int NOT NULL ,
 quarter    varchar(10) NOT NULL ,
 month      int NOT NULL ,
 week       int NOT NULL ,
 week_day   int NOT NULL ,


 CONSTRAINT PK_5 PRIMARY KEY  (order_date , ship_date )
);

CREATE TABLE customer
(
 customer_id   int NOT NULL ,
 customer_name varchar(50) NOT NULL ,


 CONSTRAINT PK_23 PRIMARY KEY  (customer_id )
);

CREATE TABLE geografy
(
 geo_id      int NOT NULL ,
 country     varchar(20) NOT NULL ,
 city        varchar(20) NOT NULL ,
 state       varchar(20) NOT NULL ,
 postal_code varchar(15) NOT NULL ,
 region      varchar(10) NOT NULL ,


 CONSTRAINT PK_37 PRIMARY KEY  (geo_id )
);

CREATE TABLE product
(
 product_id   int NOT NULL ,
 category     varchar(50) NOT NULL ,
 sub_category varchar(50) NOT NULL ,
 product_name varchar(50) NOT NULL ,
 segment      varchar(50) NOT NULL ,


 CONSTRAINT PK_39 PRIMARY KEY  (product_id )
);

CREATE TABLE shipping
(
 ship_id   int NOT NULL ,
 ship_mode varchar(50) NOT NULL ,


 CONSTRAINT PK_42 PRIMARY KEY  (ship_id )
);

CREATE TABLE sales_fact
(
 row_id      int NOT NULL ,
 order_date  date NOT NULL ,
 ship_date   date NOT NULL ,
 product_id  int NOT NULL ,
 customer_id int NOT NULL ,
 ship_id     int NOT NULL ,
 geo_id      int NOT NULL ,
 order_id    int NOT NULL ,
 sales       int NOT NULL ,
 profit      int NOT NULL ,
 quantity    int NOT NULL ,
 discount    int NOT NULL ,


 CONSTRAINT PK_13 PRIMARY KEY  (row_id ),
 CONSTRAINT FK_17 FOREIGN KEY (order_date, ship_date)  REFERENCES calendar_dim(order_date, ship_date),
 CONSTRAINT FK_57 FOREIGN KEY (product_id)  REFERENCES product(product_id),
 CONSTRAINT FK_60 FOREIGN KEY (geo_id)  REFERENCES geografy(geo_id),
 CONSTRAINT FK_63 FOREIGN KEY (ship_id)  REFERENCES shipping(ship_id),
 CONSTRAINT FK_66 FOREIGN KEY (customer_id)  REFERENCES customer(customer_id)
);



CREATE INDEX FK_19 ON sales_fact 
 (
  order_date , 
  ship_date 
 );

CREATE INDEX FK_59 ON sales_fact 
 (
  product_id 
 );

CREATE INDEX FK_62 ON sales_fact 
 (
  geo_id 
 );

CREATE INDEX FK_65 ON sales_fact 
 (
  ship_id 
 );

CREATE INDEX FK_68 ON sales_fact 
 (
  customer_id 
 );
