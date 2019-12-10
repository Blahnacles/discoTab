import sqlite3
# database setup script
conn = sqlite3.connect('NORO_Strategies')
c = conn.cursor()
# Creating table of dummy data
c.execute('''DROP TABLE IF EXISTS strategies''')
c.execute('''CREATE TABLE strategies (title TEXT, desc TEXT, activity REAL)''')
c.execute('''INSERT INTO strategies VALUES ('Meditation','Meditate with calming sounds', 0)''')
c.execute('''INSERT INTO strategies VALUES ('Breathing','Practise breathing cycles',0)''')
conn.commit()
conn.close()
