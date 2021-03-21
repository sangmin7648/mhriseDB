DB = {
    'user': 'root',
    'password': '691103',
    'host': 'localhost',
    'port': 3306,
    'database': 'mhriseDB'
}

SQLALCHEMY_TRACK_MODIFICATIONS = False

SQLALCHEMY_DATABASE_URI = f"mysql+mysqlconnector://{DB['user']}:{DB['password']}@" \
               f"{DB['host']}:{DB['port']}/{DB['database']}?charset=utf8"

MYSQL_CHARSET = 'utf8'
