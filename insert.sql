%%_____OUTLET_____%%

CS5855/mkac178=&gt; INSERT INTO outlet VALUES (&apos;JOEMAMA&apos;,&apos;13th cross&apos;,&apos;LONDON&apos;,&apos;EGHAM&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO outlet VALUES (&apos;LIGMA&apos;,&apos;14th cross&apos;,&apos;LONDON&apos;,&apos;SLOUGH&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO outlet VALUES (&apos;WALKERS&apos;,&apos;15th cross&apos;,&apos;BIRMINGHAM&apos;,&apos;STAINES&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO outlet VALUES (&apos;LAYS&apos;,&apos;16th cross&apos;,&apos;MANCHESTER&apos;,&apos;LANGLEY&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO outlet VALUES (&apos;JAMESON&apos;,&apos;17th cross&apos;,&apos;BIRMINGHAM&apos;,&apos;READING&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO outlet VALUES (&apos;JACK DANIELS&apos;,&apos;18th cross&apos;,&apos;LONDON&apos;,&apos;SLOUGH&apos;);
INSERT 0 1
CS5855/mkac178=&gt; SELECT * FROM outlet;
   otl_name   |   street   |  address   |  city   
--------------+------------+------------+---------
 JOEMAMA      | 13th cross | LONDON     | EGHAM
 LIGMA        | 14th cross | LONDON     | SLOUGH
 WALKERS      | 15th cross | BIRMINGHAM | STAINES
 LAYS         | 16th cross | MANCHESTER | LANGLEY
 JAMESON      | 17th cross | BIRMINGHAM | READING
 JACK DANIELS | 18th cross | LONDON     | SLOUGH
(6 rows)


%%_____CUSTOMER_____%%


CS5855/mkac178=&gt; INSERT INTO customer VALUES(&apos;123456789&apos;,&apos;raju&apos;,&apos;High street&apos;,&apos;Egham&apos;,&apos;UK&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO customer VALUES(&apos;987654321&apos;,&apos;kumar&apos;,&apos;High street&apos;,&apos;Bangalore&apos;,&apos;London&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO customer VALUES(&apos;879615432&apos;,&apos;vishal&apos;,&apos;White&apos;,&apos;Bangalore&apos;,&apos;India&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO customer VALUES(&apos;279615433&apos;,&apos;akhil&apos;,&apos;nagar&apos;,&apos;Hyd&apos;,&apos;UK&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO customer VALUES(&apos;573613433&apos;,&apos;sai&apos;,&apos;gateway&apos;,&apos;Hyd&apos;,&apos;UK&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO customer VALUES(&apos;673612433&apos;,&apos;shania&apos;,&apos;gateway&apos;,&apos;Egham&apos;,&apos;London&apos;);
INSERT 0 1
CS5855/mkac178=&gt; SELECT * FROM customer;
 cust_num  | cust_name |  cust_add   |  street   |  city  
-----------+-----------+-------------+-----------+--------
 123456789 | raju      | High street | Egham     | UK
 987654321 | kumar     | High street | Bangalore | London
 879615432 | vishal    | White       | Bangalore | India
 279615433 | akhil     | nagar       | Hyd       | UK
 573613433 | sai       | gateway     | Hyd       | UK
 673612433 | shania    | gateway     | Egham     | London
(6 rows)


%%_____PRODUCT_____%%

CS5855/mkac178=&gt; INSERT INTO Product VALUES(&apos;1&apos;,&apos;Pranks&apos;,&apos;Jokes&apos;,&apos;20&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO Product VALUES(&apos;2&apos;,&apos;Pranks2&apos;,&apos;Jokes2&apos;,&apos;30&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO Product VALUES(&apos;3&apos;,&apos;Chips&apos;,&apos;Food&apos;,&apos;10&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO Product VALUES(&apos;4&apos;,&apos;Chips2&apos;,&apos;Food2&apos;,&apos;15&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO Product VALUES(&apos;5&apos;,&apos;Alcohol&apos;,&apos;Drinks&apos;,&apos;22&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO Product VALUES(&apos;6&apos;,&apos;Alcohol2&apos;,&apos;Drinks2&apos;,&apos;26&apos;);
INSERT 0 1
CS5855/mkac178=&gt; SELECT * FROM product;
 p_id |  p_name  | description | price 
------+----------+-------------+-------
    1 | Pranks   | Jokes       |    20
    2 | Pranks2  | Jokes2      |    30
    3 | Chips    | Food        |    10
    4 | Chips2   | Food2       |    15
    5 | Alcohol  | Drinks      |    22
    6 | Alcohol2 | Drinks2     |    26
(6 rows)

%%_____CATEGORY_____%%

CS5855/mkac178=&gt; INSERT INTO Category VALUES(&apos;11&apos;,&apos;Jokes&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO Category VALUES(&apos;22&apos;,&apos;Joke2&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO Category VALUES(&apos;33&apos;,&apos;Food&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO Category VALUES(&apos;44&apos;,&apos;Food2&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO Category VALUES(&apos;55&apos;,&apos;Drinks&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO Category VALUES(&apos;66&apos;,&apos;Drinks2&apos;);
INSERT 0 1
CS5855/mkac178=&gt; SELECT * FROM category;
 cat_id | description 
--------+-------------
     11 | Jokes
     22 | Joke2
     33 | Food
     44 | Food2
     55 | Drinks
     66 | Drinks2
(6 rows)


%%_____PURCHASE_____%%

CS5855/mkac178=&gt; INSERT INTO purchase VALUES (1,&apos;2021-02-23 09:00:00&apos;,&apos;JOEMAMA&apos;,123456789);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO purchase VALUES (2,&apos;2021-12-13 09:00:00&apos;,&apos;LIGMA&apos;,987654321);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO purchase VALUES (3,&apos;2020-02-13 09:00:00&apos;,&apos;WALKERS&apos;,879615432);INSERT 0 1
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO purchase VALUES (4,&apos;2020-04-23 09:00:00&apos;,&apos;LAYS&apos;,279615433);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO purchase VALUES (5,&apos;2021-04-23 09:30:00&apos;,&apos;JAMESON&apos;,&apos;573613433&apos;);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO purchase VALUES (6,&apos;2021-08-03 09:30:00&apos;,&apos;JACK DANIELS&apos;,&apos;673612433&apos;);
INSERT 0 1
CS5855/mkac178=&gt; SELECT * FROM purchase;
 pu_id |      date_time      |   otl_name   | cust_num  
-------+---------------------+--------------+-----------
     1 | 2021-02-23 09:00:00 | JOEMAMA      | 123456789
     2 | 2021-12-13 09:00:00 | LIGMA        | 987654321
     3 | 2020-02-13 09:00:00 | WALKERS      | 879615432
     4 | 2020-04-23 09:00:00 | LAYS         | 279615433
     5 | 2021-04-23 09:30:00 | JAMESON      | 573613433
     6 | 2021-08-03 09:30:00 | JACK DANIELS | 673612433
(6 rows)


%%_____PRODUCT_CATEGORY_____%%

CS5855/mkac178=&gt; INSERT INTO product_category VALUES (1,11);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO product_category VALUES (2,22);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO product_category VALUES (3,33);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO product_category VALUES (4,44);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO product_category VALUES (5,55);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO product_category VALUES (6,66);
INSERT 0 1
CS5855/mkac178=&gt; SELECT * FROM product_category;
 p_id | cat_id 
------+--------
    1 |     11
    2 |     22
    3 |     33
    4 |     44
    5 |     55
    6 |     66
(6 rows)


%%_____PURCHASEITEM_____%%

<pre>CS5855/mkac178=&gt; INSERT INTO purchaseitem VALUES (1,1,20,100);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO purchaseitem VALUES (2,2,50,200);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO purchaseitem VALUES (3,3,10,50);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO purchaseitem VALUES (4,4,90,510);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO purchaseitem VALUES (5,5,40,80);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO purchaseitem VALUES (6,6,30,90);
INSERT 0 1
CS5855/mkac178=&gt; SELECT * FROM purchaseitem;
 pu_id | p_id | copies | price_per_copy 
-------+------+--------+----------------
     1 |    1 |     20 |            100
     2 |    2 |     50 |            200
     3 |    3 |     10 |             50
     4 |    4 |     90 |            510
     5 |    5 |     40 |             80
     6 |    6 |     30 |             90
(6 rows)

%%_____STOCK_____%%

CS5855/mkac178=&gt; INSERT INTO stock VALUES (&apos;JOEMAMA&apos;,1,20);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO stock VALUES (&apos;LIGMA&apos;,2,50);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO stock VALUES (&apos;WALKERS&apos;,3,10);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO stock VALUES (&apos;LAYS&apos;,4,90);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO stock VALUES (&apos;JAMESON&apos;,5,40);
INSERT 0 1
CS5855/mkac178=&gt; INSERT INTO stock VALUES (&apos;JACK DANIELS&apos;,6,30);
INSERT 0 1
CS5855/mkac178=&gt; SELECT * FROM stock;
   otl_name   | p_id | copies 
--------------+------+--------
 JOEMAMA      |    1 |     20
 LIGMA        |    2 |     50
 WALKERS      |    3 |     10
 LAYS         |    4 |     90
 JAMESON      |    5 |     40
 JACK DANIELS |    6 |     30
(6 rows)






