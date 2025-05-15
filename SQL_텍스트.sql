CREATE DATABASE IF NOT EXISTS FulltextDB;
USE FulltextDB;
# 해당 테이블이 존재할 경우 삭제. 테이블이 존재하지 않을 경우엔 에러가 발생하지 않도록 방지하는 역할
DROP TABLE IF EXISTS FulltextTbl;
CREATE TABLE FulltextTbl (
	id int AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(15) NOT NULL,
    description VARCHAR(1000)
    );
INSERT INTO FulltextTbl VALUES(Null, '광해, 왕이 된 남자','왕위를 둘러싼 권력 다툼과 당쟁으로 혼란이 극에 달한 광해군 8년');
INSERT INTO FulltextTbl VALUES(Null,'간첩','남한 내에 고장간첩 5만 명이 암약하고 있으며 특히 권력 핵심부에도 침투해있다.');
INSERT INTO FulltextTbl VALUES(Null,'피에타',' 더 나쁜 남자가 온다! 잔혹한 방법으로 돈을 뜯어내는 악마같은 남자 스토리.');
INSERT INTO FulltextTbl VALUES(Null,'레지던트 이블 5','인류 구원의 마지막 퍼즐, 이 여자가 모든 것을 끝낸다.');
INSERT INTO FulltextTbl VALUES(Null,'파괴자들','사랑은 모든 것을 파괴한다! 한 여자를 구하기 위한, 두 남자의 잔인한 액션 본능!');
INSERT INTO FulltextTbl VALUES(Null,'킹콩을 들다',' 역도에 목숨을 건 시골소녀들이 만드는 기적 같은 신화 .');
INSERT INTO FulltextTbl VALUES(Null,'테드','지상최대 황금찾기 프로젝트! 500년 전 사라진 황금도시를 찾아라!');
INSERT INTO FulltextTbl VALUES(Null,'타이타닉','비극 속에 침몰한 세기의 사랑, 스크린에 되살아날 영원한 감동');
INSERT INTO FulltextTbl VALUES(Null,'8월의 크리스마스','시한부 인생 사진사와 여자 주차 단속원과의 미묘한 사랑');
INSERT INTO FulltextTbl VALUES(Null,'늑대와 춤을','늑대와 친해져 모닥불 아래서 함께 춤을 추는 전쟁 영웅 이야기');
INSERT INTO FulltextTbl VALUES(Null,'국가대표','동계올림픽 유치를 위해 정식 종목인 스키점프 국가대표팀이 급조된다.');
INSERT INTO FulltextTbl VALUES(Null,'쇼생크 탈출','그는 누명을 쓰고 쇼생크 감옥에 감금된다. 그리고 역사적인 탈출.');
INSERT INTO FulltextTbl VALUES(Null,'인생은 아름다워','귀도는 삼촌의 호텔에서 웨이터로 일하면서 또 다시 도라를 만난다.');
INSERT INTO FulltextTbl VALUES(Null,'사운드 오브 뮤직','수녀 지망생 마리아는 명문 트랩가의 가정교사로 들어간다');
INSERT INTO FulltextTbl VALUES(Null,'매트릭스',' 2199년.인공 두뇌를 가진 컴퓨터가 지배하는 세계.');


select * 
from fulltexttbl
where title like '%인생%';

# 테이블명 변경
alter table fulltexttbl rename to 풀텍스트테이블;
alter table 풀텍스트테이블 rename to fulltexttbl;

alter table fulltexttbl;
SHOW INDEX FROM fulltexttbl;

# abc 칼럼 추가
alter table fulltexttbl add column abc varchar(250);

# 테이블 생성 시 사용된 SQL을 보고 싶을 때
show create table fulltexttbl;

# 테이블의 구조
describe fulltexttbl;

# 데이터 추가
insert into fulltexttbl values(Null, '니가 가라','하와이','에라이~~~~~');

select title as '누가', description as '어딜', abc as '왜'
from fulltexttbl
where id = 16;


# 테이블이 아닌 데이터행을 바꾸는 것이므로 DDL-alter가 아닌 DML-update를 사용. 
update fulltexttbl
set abc = '영화';


# 기존 데이터 지우려면 빈 문자열로 바꾸기(문자열 타입일 때 가능) 또는 null로 바꾸기(nn이 아닐 때)
UPDATE fulltexttbl
SET abc = null;

# 칼럼 삭제
alter table fulltexttbl
drop column abc;




CREATE DATABASE IF NOT EXISTS 신문기사_테이블;
USE 신문기사_테이블;
# 테이블이 아닌 데이터베이스 삭제 
DROP DATABASE IF EXISTS 신문기사_테이블;

