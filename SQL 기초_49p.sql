# 책이름이 축구의 역사인 출판사와 가격사의 정보를 검색
SELECT publisher, price
FROM Book
WHERE bookname LIKE '축구의 역사';

# 김연아 고객의 전화번호를 찾으시오. 
SELECT phone
FROM custoMER
WHERE name='김연아';

# 모든 도서의 이름과 가격 검색
SELECT bookname,PRICE
FROM book;

# 모든 도서의 가격과 이름
select price as 가격 , bookname as 책이름
from book;

# 모든 도서의 도서번호, 도서이름, 출판사, 가격 검색
select *
from book;

# 중복 제거를 위한 키워드
select distinct publisher
from book;

# 가격이 20,000원 미만인 도서를 검색
select *
from book
where price < 20000;

# 가격이 10,000원 이상 20,000원 이하인 도서를 검색하시오.  between과 and 사용
select *
from book
where price between 10000 and 20000;

select *
from book
where price >= 10000 and price <= 20000; 

# 출판사가 굿스포츠 혹은 대한미디어 인 도서를 검색  in과 or 사용
select *
from book
where publisher in ('굿스포츠', '대한미디어');

select *
from book
where publisher ='굿스포츠' or publisher ='대한미디어';

# 출판사가 굿스포츠 혹은 대한미디어가 아닌 도서를 검색
select *
from book
where publisher not in ('굿스포츠', '대한미디어');

# 아닌 을 쓸 때에는 둘 다 포함이기에 and를 사용해야함
select *
from book
where publisher !='굿스포츠' and publisher !='대한미디어';

# 축구의 역사를 출간한 출판사
select bookname, publisher
from book
where bookname LIKE '축구의 역사';

# 도서이름에 축구가 포함된 출판사를 검색하시오
select bookname, publisher
from book
where bookname LIKE '%축구%';

# 도서이름 왼쪽 두 번째 위치에 '구'라는 문자열을 갖는 도서를 검색
select *
from book
where bookname LIKE '_구%';

# 축구에 관한 도서 중 가격이 20,000원 이상인 도서를 검색하시오
select *
from book
where bookname like '%축구%' and price>=20000;

# 도서를 이름순으로 검색
 select *
 from book
 order by bookname;
 
 # 도서를 가격순으로 검색 후 가격이 같으면 이름순으로 검색
 select *
 from book
 order by price, bookname;
 
 # 도서를 가격의 내림차순으로 검색하라. 만약 가격이 같다면 출판사의 오름차순으로 검색하라.
select *
from book
order by price desc, publisher asc;

# 고객이 주문한 도서의 총 판매액을 구하시오.
select sum(saleprice) as '총 판매액'
from orders;

# 2번 김연아 고객이 주문한 도서의 총 판매액을 구하시오
select sum(saleprice) as '김연아고객 판매액'
from orders
where custid=2;

# 고객이 주문한 도서의 총 판매액, 평균값, 최저가, 최고가 구하시오.
select sum(saleprice) as '총 판매액', avg(saleprice) as 평균값, min(saleprice) as 최저가, max(saleprice) as 최고가
from orders;

# 마당서점의 도서 판매 건수
select count(*) as '전체 판매 건수'
from orders;

# 고객별 주문한 도서의　총　수량과　총　판매액을　구하시오．
select custid, COUNT(*) as '총 수량', sum(saleprice) as '총 판매액'
from orders
group by custid;

# 가격이 8,000원 이상인 도서를 구매한 고객에 대하여 고객별 주문 도서의 총 수량을 구하시오. 단 두 권 이상 구매한 고객만 구함.
select custid, COUNT(*) as '도서수량'
from orders
where saleprice >= 8000
group by custid
having count(*) >= 2;

# 두 개 이상 테이블 조건 없이 연결
select *
from customer, orders;

# 고객과 고객의 주문에 관한 데이터를 다 보여라
select *
from customer, orders
where customer.custid = orders.custid;

# 위 데이터를 고객번호 순으로 정렬
select *
from customer, orders
where customer.custid = orders.custid
order by customer.custid; 

# 고객의 이름과 고객이 주문한 도서의 판매가격 검색
select name as 고객이름, saleprice as 판매가격
from customer, orders
where customer.custid = orders.custid;

# 고객별로 주문한 모든 도서의 총 판매액을 구하고 고객별로 정렬하라
select name as '고객', sum(saleprice) as '총 판매액'
from customer, orders
where customer.custid = orders.custid
group by customer.name
order by customer.name;

# 고객의 이름과 고객이 주문한 도서의 이름을 구하라
select customer.name as 고객이름, book.bookname as 도서이름
 from customer, orders, book
 where customer.custid = orders.custid and orders.bookid = book.bookid;
 
 # 가격이 20,000원인 도서를 주문한 고객의 이름과 도서의 이름을 구하라
 select customer.name as 고객이름, book.bookname as 도서이름
 from customer, orders, book
 where customer.custid = orders.custid and orders.bookid = book.bookid and book.price = 20000;

