# Python Ver: 3.7.3
# Author: Michael Cavallaro



import shutil
import os
import sqlite3 #this is necessary to be able to record the file names that were moved + their corresponding timestamps into a database?
from tkinter import *
import tkinter as tk
from tkinter import messagebox
from tkinter import filedialog

class ParentWindow(Frame):
    def __init__(self, master, *args, **kwargs):
        Frame.__init__(self, master, *args, **kwargs)
        self.master = master
        self.master.minsize(650,300)
        self.master.maxsize(650,300)
        self.master.title("Drill 122")
        self.master.configure(bg="#F0F0F0")

        
        self.var_sourcePath = StringVar()
        self.var_destinationPath = StringVar()

        self.btn_sourceDirectory = tk.Button(self.master,width=20,height=2,text='View Source Directory',command=lambda:clickViewSourceDirectoryButton(self))
        self.btn_sourceDirectory.grid(row=1,column=0,padx=(10,5),pady=(10,0))
        self.btn_destinationDirectory = tk.Button(self.master,width=20,height=2,text='View Destination Directory',command=lambda:clickDestinationDirectoryButton(self))
        self.btn_destinationDirectory.grid(row=2,column=0,padx=(10,5),pady=(10,0))
        self.btn_txtFiles = tk.Button(self.master,width=20,height=2,text='Find Text Files',command=lambda:clickFindTextFilesButton(self))
        self.btn_txtFiles.grid(row=3,column=0,padx=(10,5),pady=(10,0))

        self.txt_sourceDirectoryPath = tk.Entry(self.master,width=60,text='',textvariable=self.var_sourcePath)
        self.txt_sourceDirectoryPath.grid(row=1,column=1,padx=(5,10),pady=(10,0))
        self.txt_destinationDirectory = tk.Entry(self.master,width=60,text='',textvariable=self.var_destinationPath)
        self.txt_destinationDirectory.grid(row=2,column=1,padx=(5,10),pady=(10,0))

        

def clickViewSourceDirectoryButton(self):
    dirPath = filedialog.askdirectory()
    print(dirPath)
    self.var_sourcePath.set(dirPath)

def clickDestinationDirectoryButton(self):
    dirPath = filedialog.askdirectory()
    print(dirPath)
    self.var_destinationPath.set(dirPath)

def clickFindTextFilesButton(self):
    srcPath = self.var_sourcePath.get()
    fileNameList = os.listdir(srcPath)
    for fileName in fileNameList:
        if fileName.endswith(".txt"):
            srcFullPath = os.path.join(self.var_sourcePath.get() , fileName)
            dstDirPath = self.var_destinationPath.get()

            print(fileName)
            lastModifiedTime = os.path.getmtime(srcFullPath)
            #this is where I would convert mtime to ctime, using the time.ctime module
            print(lastModifiedTime)

            conn = sqlite3.connect('drill_123.db')
            with conn:
                cur = conn.cursor()
                cur.execute("CREATE TABLE IF NOT EXISTS tbl_txtFiles( \
                    ID INTEGER PRIMARY KEY AUTOINCREMENT, \
                    col_fileName varchar(50), \
                    col_timeStamp varchar(50) \
                    )")
                cur.execute("INSERT INTO tbl_txtFiles(col_fileName, col_timeStamp) VALUES (?,?)",(fileName, lastModifiedTime))
                conn.commit()
            conn.close()

            

            
            shutil.move(srcFullPath, dstDirPath)#move command should be the last in sequence.

            
            
'''
path = "C:\\Users\\mdcav\\AppData\\Local\\Programs\\Python\\Python37-32\\PythonDrill_100"

os.listdir(path)
directory = os.listdir(path)

def clickFindTextFilesButton(self):
    for file in os.listdir(path):
        if file.endswith(".txt"):
            print(os.path.join("C:\\Users\\mdcav\\AppData\\Local\\Programs\\Python\\Python37-32\\PythonDrill_100", file))

#conn = sqlite3.connect('drill_123.db')

source = os.listdir("C:\\Users\\mdcav\\AppData\\Local\\Programs\\Python\\Python37-32\\PythonDrill_100")
destination = "C:\\Users\\mdcav\\AppData\\Local\\Programs\\Python\\Python37-32\\PythonDrill_123" #Are the double backslashes is okay format wise?
for files in source:
    if files.endswith(".txt"):
        shutil.copy(files,destination)

        
print(os.path.join(path, "file1.txt", "file2.txt", "file3.txt", "file4.py", "file5.py", "file6.py", "file7.py", "file8.txt", "file9.txt", "file10.txt"))#should the non text files be removed from this list??
print(os.path.getmtime(path))


'''


if __name__ == "__main__":
    root = tk.Tk()
    App = ParentWindow(root)
    root.mainloop()
