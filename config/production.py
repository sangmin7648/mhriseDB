import os

password = os.getenv('DB_PASSWORD')

DB = {
    'user': 'root',
    'password': password,
    'host': 'mhrisedb-database.cydpwjfwzhkw.ap-northeast-2.rds.amazonaws.com',
    'port': 3306,
    'database': 'mhriseDB'
}

SQLALCHEMY_TRACK_MODIFICATIONS = False

SQLALCHEMY_DATABASE_URI = f"mysql+mysqlconnector://{DB['user']}:{DB['password']}@" \
               f"{DB['host']}:{DB['port']}/{DB['database']}?charset=utf8"

MYSQL_CHARSET = 'utf8'
