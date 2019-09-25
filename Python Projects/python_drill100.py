

import os

path = "C:\\Users\\mdcav\\AppData\\Local\\Programs\\Python\\Python37-32\\PythonDrill_100"

os.listdir(path)
directory = os.listdir(path)

for file in directory:
    print (file)




path = "C:\\Users\\mdcav\\AppData\\Local\\Programs\\Python\\Python37-32\\PythonDrill_100"
print(os.path.join(path, "file1.txt", "file2.txt", "file3.txt", "file4.py", "file5.py", "file6.py", "file7.py", "file8.txt", "file9.txt", "file10.txt"))


print(os.path.getmtime(path))


for file in os.listdir(path):
    if file.endswith(".txt"):
        print(os.path.join("C:\\Users\\mdcav\\AppData\\Local\\Programs\\Python\\Python37-32\\PythonDrill_100", file))


