import csv
import pymysql

csv_file = '/home/sangmin/vscode/mhrisecsv/data_csv/test_hit_data.csv'
n_column = 11
conn = pymysql.connect(host='localhost', port=3306, user='root', password='691103', db='mhriseDB', charset='utf8')
curs = conn.cursor()
sql = """
INSERT INTO hit_data (id, monster_name, part, slash, impact, shot, fire, water, thunder, ice, dragon)
VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
"""

f = open( csv_file,  'r', encoding='utf-8')
rd = csv.reader(f)
for line in rd:
    curs.execute(sql, [line[i] for i in range(n_column)])
    print(line)
conn.commit()
conn.close()
f.close()