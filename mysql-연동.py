import pymysql

# 연결 테스트용 코드
try:
    conn = pymysql.connect(host='127.0.0.1', user='root', password='0000', db = 'madang', charset='utf8mb4')
    print("MySQL 연결 성공!")
    conn.close()
except Exception as e:
    print("연결 실패:", e)

