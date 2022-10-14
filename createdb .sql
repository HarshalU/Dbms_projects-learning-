cim-ts-node-02$ psql -h teachdb.cs.rhul.ac.uk CS5855/mkac178
Password for user mkac178: 
psql (12.8 (Ubuntu 12.8-0ubuntu0.20.04.1))
Type &quot;help&quot; for help.


%%_____OUTLET_____%%

CS5855/mkac178=&gt; CREATE TABLE outlet(otl_name varchar(20) NOT NULL,street varchar(20),address varchar(20),city varchar(20),PRIMARY KEY(otl_name));
CREATE TABLE


%%_____CUSTOMER_____%%

CS5855/mkac178=&gt; CREATE TABLE customer (cust_num int,
cust_name varchar(20),
cust_add varchar(20),
street varchar(20),
city varchar(20),
PRIMARY KEY(cust_num)
);
CREATE TABLE</pre>

%%_____PRODUCT_____%%

CS5855/mkac178=&gt; CREATE TABLE product (p_id int,
CS5855/mkac178(&gt; p_name varchar(20),
CS5855/mkac178(&gt; description varchar(20),
CS5855/mkac178(&gt; price int,
CS5855/mkac178(&gt; PRIMARY KEY(p_id)
CS5855/mkac178(&gt; );
CREATE TABLE
</pre>
%%_____CATEGORY_____%%

CS5855/mkac178=&gt; CREATE TABLE category (cat_id int,
CS5855/mkac178(&gt; description varchar(20),
CS5855/mkac178(&gt; PRIMARY KEY(cat_id)
CS5855/mkac178(&gt; );
CREATE TABLE


%%_____PURCHASE_____%%

CS5855/mkac178=&gt; CREATE TABLE Purchase(Pu_Id int NOT NULL,date_time TIMESTAMP,name varchar(20),cust_num int,
foreign key(name) references outlet,
foreign key(cust_num) references customer,
PRIMARY KEY(pu_id));
CREATE TABLE

%%_____PRODUCT_CATEGORY_____%%

CS5855/mkac178=&gt; CREATE TABLE product_category (p_id int,
CS5855/mkac178(&gt; cat_id int,
CS5855/mkac178(&gt; foreign key (p_id) references product,
CS5855/mkac178(&gt; foreign key (cat_id) references category
CS5855/mkac178(&gt; );
CREATE TABLE


%%_____PURCHASEITEM_____%%

CS5855/mkac178=&gt; CREATE TABLE purchaseitem (pu_id int,
CS5855/mkac178(&gt; p_id int,
CS5855/mkac178(&gt; copies int,
CS5855/mkac178(&gt; price_per_copy int,
CS5855/mkac178(&gt; foreign key (pu_id) references purchase,
CS5855/mkac178(&gt; foreign key (p_id) references product
CS5855/mkac178(&gt; );
CREATE TABLE


%%_____STOCK_____%%

CS5855/mkac178=&gt; CREATE TABLE stock (otl_name varchar(20),
CS5855/mkac178(&gt; p_id int,
CS5855/mkac178(&gt; copies int,
CS5855/mkac178(&gt; foreign key (otl_name) references outlet,
CS5855/mkac178(&gt; foreign key (p_id) references product
CS5855/mkac178(&gt; );
CREATE TABLE




