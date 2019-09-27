
import sqlite3

conn = sqlite3.connect('drill_103.db')

with conn:
    cur = conn.cursor()
    cur.execute("CREATE TABLE IF NOT EXISTS tbl_files( \
        ID INTEGER PRIMARY KEY AUTOINCREMENT, \
        col_fileName STRING \
        )")
    conn.commit()
conn.close()



fileList = ('information.docx','Hello.txt','myImage.png', \
            'myMovie.mpg','World.txt','data.pdf','myPhoto.jpg')
for x in fileList:
    if x.endswith('.txt'):
        print(x)
    

conn = sqlite3.connect('drill_103.db')

with conn:
    cur = conn.cursor()
    cur.execute("INSERT INTO tbl_files(col_fileName) VALUES (?)", \
                ('Hello.txt'))
    cur.execute("INSERT INTO tbl_files(col_fileName) VALUES (?)", \
                ('World.txt'))
    conn.commit
conn.close()


