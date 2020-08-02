-- 1. Retrieve all the customers names and addresses who lives in United States
select name, address from customers where country= 'United States';
-- 2. Retrieve all the customers ordered by ascending name
select * from customers order by name asc;
-- 3. Retrieve all the products which cost more than 100
select * from products where unit_price > 100;
-- 4. Retrieve all the products whose name contains the word `socks`
select * from products where product_name like '%socks%';
-- 5. Retrieve the 5 most expensive products
select Max(unit_price) from products;
-- 6. Retrieve all the products with their corresponding suppliers. The result should only contain the columns `product_name`, `unit_price` and `supplier_name`
select product_name, unit_price, supplier_name from products join suppliers on products.supplier_id= suppliers.id;
-- 7. Retrieve all the products sold by suppliers based in the United Kingdom. The result should only contain the columns `product_name` and `supplier_name`.
select product_name, supplier_name from products join suppliers on products.supplier_id= suppliers.id where suppliers.country='United Kingdom';
-- 8. Retrieve all orders from customer ID `1`
select * from orders where customer_id=1;
-- 9. Retrieve all orders from customer named `Hope Crosby`
select * from orders join customers on orders.customer_id= customers.id where name='Hope Crosby';
-- 10. Retrieve all the products in the order `ORD006`. The result should only contain the columns `product_name`, `unit_price` and `quantity`.
select product_name, unit_price, quantity from order_items join orders on order_items.order_id= orders.id join products on products.id=order_items.product_id where order_reference= 'ORD006';
-- 11. Retrieve all the products with their supplier for all orders of all customers. The result should only contain the columns `name` (from customer), `order_reference` `order_date`, `product_name`, `supplier_name` and `quantity`.
select name, order_reference, order_date, product_name, supplier_name, quantity from order_items join orders on order_items.order_id = orders.id join products on products.id = order_items.product_id join suppliers on products.supplier_id = suppliers.id join customers on orders.customer_id = customers.id;
-- 12. Retrieve the names of all customers who bought a product from a supplier from China.
select name from orders join customers on orders.customer_id = customers.id join order_items on order_items.order_id = orders.id join products on order_items.product_id = products.id join suppliers on products.supplier_id = suppliers.id where suppliers.country= 'China';


