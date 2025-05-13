/* 연습문제 */

-- 도서번호가 1인 도서의 이름
select bookname as 도서이름
from book
where bookid = 1;

-- 가격이 20,000원 이상인 도서의 이름
select bookname as 도서이름
from book
where price >=20000;

-- 박지성의 총 구매액(고객번호 = 1)
select custid as 박지성, sum(saleprice) as '총 구매액'
from orders
where custid = 1;

-- 박지성이 구매한 도서의 수
select custid as 박지성, count(*) as '총 구매 개수'
from orders
where custid = 1;

-- 마당서점 도서의 총 개수
select count(*) as '총 개수'
from book;

-- 마당서점에 도서를 출고하는 출판사의 총 개수
select count(distinct publisher) as '출판사의 수'
from book;

-- 모든 고객의 이름, 주소
select name as 고객이름, address as 주소
from customer;

-- 2014년 7월 4일~7월 7일 사이에 주문 받은 도서의주문번호
select orderdate as 주문날짜, orderid as 주문번호
from orders
where orderdate between '2014-07-04' and '2014-07-07';

-- 2014년 7월 4일~7월 7일 사이에 주문 받은 도서를 제외한 도서의 주문번호
select orderdate as 주문날짜, orderid as 주문번호
from orders
where orderdate not in ( select orderdate from customer where orderdate between '2014-07-04' and '2014-07-07');

-- 성이 ‘김’ 씨인 고객의 이름과 주소
select name as 고객이름 , address as 주소
from customer
where name LIKE '김%';

-- 성이 ‘김’ 씨이고 이름이 ‘아’로 끝나는 고객의이름과주소
select  name as 고객이름 , address as 주소
from customer
where name LIKE '김%아';



