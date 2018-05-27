import pymysql
def query_course_by_jupterhub_user():
    conn= pymysql.connect(
        host='140.143.5.72',
        port = 3306,
        user='dbuser',
        passwd='passw0rd',
        db ='easyailab'
    )
    cur = conn.cursor()
    cur.execute("SELECT user_login FROM wp_users")
    for r in cur.fetchall():
        print(r)
    cur.close()
    conn.close()

query_course_by_jupterhub_user()