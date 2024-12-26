-- DISTINCT    -> tabloda aynı değere sahip verileri tek bir değer olarak verir.
-- COUNT       -> tablodaki istenen verilerin sayısının toplamını verir. () ile kullanılır.
-- WHERE       -> filtreleme yapar.
-- ORDER BY    -> sütun adına göre sıralama yapar.
-- ASC/DESC    -> 'ASC' artan sıralama, 'DESC' azalan sıralama yapar.
-- LIMIT       -> verilen sayı kadar değer döndürür.
-- BETWEEN     -> tarihleri ' ' içerisinde girebiliriz.
-- IN          -> () içerisindeki değerleri listeler.
-- LIKE-ILIKE  -> '& ve _' işaretleri kullanılır. ILIKE büyük küçük harfe duyarsız. 
-- &           -> 'x&' x ile başlayan herşey / '&x' sonu x ile biten herşey
-- _           -> tek karakter olarak verilir. her _ bir karakter verir.
-- ROUND       -> 2 parametre alır (değer,ondalık değer)
-- GROUP BY    -> aynı isme ait satırları bir satır haline getirip birleştirir.
-- DATE        -> (date) yazılır yıl-ay-gün şeklinde belirtir.
-- HAVING      -> agg işlemleri tamamlandıktan sonra filtreleme işlemleri yapmak için kullanılabilir.


SELECT first_name,last_name FROM customer WHERE first_name LIKE 'J%'; -- ilk harfi j olan

SELECT first_name,last_name FROM customer WHERE first_name LIKE '__r_';

SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id;

SELECT * FROM payment;

SELECT customer_id, staff_id, SUM(amount) FROM payment GROUP BY customer_id, staff_id; 

SELECT DATE(payment_date), SUM(amount) FROM payment GROUP BY DATE(payment_date);

SELECT staff_id, COUNT(amount) FROM payment GROUP BY staff_id;

SELECT rating, ROUND(AVG(replacement_cost),3)FROM film GROUP BY rating;

SELECT customer_id,SUM(amount) FROM payment GROUP BY customer_id ORDER BY SUM(amount) DESC LIMIT 5;

SELECT customer_id, COUNT(payment_id) FROM payment GROUP BY customer_id HAVING COUNT(payment_id)>=40;

SELECT customer_id, SUM(amount) as SUM FROM payment WHERE staff_id=2 GROUP BY customer_id HAVING SUM(amount)>100;

