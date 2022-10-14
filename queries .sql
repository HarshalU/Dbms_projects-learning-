
1st


CS5855/mkac178=&gt; CREATE VIEW purchase_item_total AS SELECT pu_id,p_id,copies,price_per_copy, (copies * price_per_copy) AS item_total FROM purchaseitem;
CREATE VIEW
CS5855/mkac178=&gt; SELECT * FROM purchase_item_total;
 pu_id | p_id | copies | price_per_copy | item_total 
-------+------+--------+----------------+------------
     1 |    1 |     20 |            100 |       2000
     2 |    2 |     50 |            200 |      10000
     3 |    3 |     10 |             50 |        500
     4 |    4 |     90 |            510 |      45900
     5 |    5 |     40 |             80 |       3200
     6 |    6 |     30 |             90 |       2700
(6 rows)

2nd

CS5855/mkac178=&gt; CREATE VIEW purchase_total AS SELECT pu_id, SUM (item_total) AS total_paid FROM purchase_item_total GROUP BY pu_id;
CREATE VIEW
CS5855/mkac178=&gt; SELECT * FROM purchase_total;
 pu_id | total_paid 
-------+------------
     3 |        500
     5 |       3200
     4 |      45900
     6 |       2700
     2 |      10000
     1 |       2000
(6 rows)


1st)

CS5855/mkac178=&gt; SELECT purchase.pu_id,purchase.otl_name, SUM (purchase_item_total.item_total) AS total_paid,purchase.cust_num,purchase.date_time FROM purchase left join purchase_item_total on purchase_item_total.pu_id=Purchase.pu_id where purchase.otl_name = &apos;JOEMAMA&apos; group by purchase.pu_id order by purchase.date_time desc;                                     
 pu_id | otl_name | total_paid | cust_num  |      date_time      
-------+----------+------------+-----------+---------------------
     1 | JOEMAMA  |       2000 | 123456789 | 2021-02-23 09:00:00
(1 row)

2nd)


CS5855/mkac178=&gt; SELECT purchase.cust_num, customer.cust_add, (purchase_item_total.item_total) AS purchase_value, avg (purchase_item_total.item_total) AS average_purchase_value, max (purchase_item_total.item_total) AS maximum_purchase_value FROM customer left join purchase on purchase.cust_num = customer.cust_num left join purchase_item_total on purchase_item_total.pu_id = purchase.pu_id where (purchase_item_total.item_total)&gt;100 group by customer.cust_add,purchase.cust_num,purchase_item_total.item_total;
 cust_num  |  cust_add   | purchase_value | average_purchase_value | maximum_purchase_value 
-----------+-------------+----------------+------------------------+------------------------
 123456789 | High street |           2000 |  2000.0000000000000000 |                   2000
 279615433 | nagar       |          45900 |     45900.000000000000 |                  45900
 879615432 | White       |            500 |   500.0000000000000000 |                    500
 673612433 | gateway     |           2700 |  2700.0000000000000000 |                   2700
 573613433 | gateway     |           3200 |  3200.0000000000000000 |                   3200
 987654321 | High street |          10000 | 10000.0000000000000000 |                  10000
(6 rows)

3rd)

CS5855/mkac178=&gt; SELECT product.p_id, product.p_name, stock.otl_name, (stock.copies) AS total_copies, (purchaseitem.price_per_copy * purchaseitem.copies) AS copies_sold FROM product left join stock on product.p_id = stock.p_id left join purchaseitem on product.p_id = purchaseitem.p_id order by copies_sold;
 p_id |  p_name  |   otl_name   | total_copies | copies_sold 
------+----------+--------------+--------------+-------------
    3 | Chips    | WALKERS      |           10 |         500
    1 | Pranks   | JOEMAMA      |           20 |        2000
    6 | Alcohol2 | JACK DANIELS |           30 |        2700
    5 | Alcohol  | JAMESON      |           40 |        3200
    2 | Pranks2  | LIGMA        |           50 |       10000
    4 | Chips2   | LAYS         |           90 |       45900
(6 rows)


4th)

CS5855/mkac178=&gt; SELECT outlet.address,outlet.city,product_category.p_id, product_category.cat_id,outlet.otl_name, purchase_item_total.item_total AS total_sales FROM purchase left join outlet on outlet.otl_name = purchase.otl_name left join purchase_item_total on purchase_item_total.pu_id = purchase.pu_id left join product_category on product_category.p_id= purchase_item_total.p_id;
  address   |  city   | p_id | cat_id |   otl_name   | total_sales 
------------+---------+------+--------+--------------+-------------
 LONDON     | EGHAM   |    1 |     11 | JOEMAMA      |        2000
 LONDON     | SLOUGH  |    2 |     22 | LIGMA        |       10000
 BIRMINGHAM | STAINES |    3 |     33 | WALKERS      |         500
 MANCHESTER | LANGLEY |    4 |     44 | LAYS         |       45900
 BIRMINGHAM | READING |    5 |     55 | JAMESON      |        3200
 LONDON     | SLOUGH  |    6 |     66 | JACK DANIELS |        2700
(6 rows)







