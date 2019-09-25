

import os

path = "C:\\Users\\mdcav\\AppData\\Local\\Programs\\Python\\Python37-32\\PythonDrill_100"

os.listdir(path)
directory = os.listdir(path)

for file in directory:
    print (file)




path = 'C:\\Users\\mdcav\\AppData\\Local\\Programs\\Python\\Python37-32\\PythonDrill_100'
fileList = os.listdir(path)
for file in fileList:
    print(os.path.join(path,file))



print(os.path.getmtime(path))


for file in os.listdir(path):
    if file.endswith(".txt"):
        print(os.path.join("C:\\Users\\mdcav\\AppData\\Local\\Programs\\Python\\Python37-32\\PythonDrill_100", file))


