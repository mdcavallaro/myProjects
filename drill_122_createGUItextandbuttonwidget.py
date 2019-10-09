# Python Ver: 3.7.3

#Author: Michael Cavallaro

#Purpose: For this drill, you will need to write a script that creates a GUI with a button
#         widget and a text widget. Your script will also include a function that when it is called will
#         invoke a dialog modal which will allow users with the ability to select a folder directory from
#         their system. Finally, your script will show the user's selected directory path into the text field.
#               1. Your script will need to use Python 3 and the Tkinter module.
#               2. Your script will need to use the askdirectory() method from the Tkinter module.
#               3. Your script will need to have a function linked to the button widget so that once
#                  the button has been clicked will take the user's selected file path retained by the askdirectory()
#                  method and print it within your GUI's text widget.


# add a function to a button so that the askdirectory can be called u
# create a variable that holds the file path of the selected folder, then use a function that prints the file path to the GUI. Variable can be made outside of the function.

from tkinter import *
import tkinter as tk
from tkinter import messagebox
from tkinter import filedialog

class ParentWindow(Frame):
    def __init__(self, master, *args, **kwargs):
        Frame.__init__(self, master, *args, **kwargs)
        self.master = master
        self.master.minsize(500,300)
        self.master.maxsize(500,300)
        self.master.title("Drill 122")
        self.master.configure(bg="#F0F0F0")

        
        self.var_dirPath = StringVar()

        self.btn_fileLocation = tk.Button(self.master,width=20,height=2,text='Find the File Location',command=lambda:clickFileLocationButton(self))
        self.btn_fileLocation.grid(row=1,column=1,padx=(10,5),pady=(10,0))

        self.txt_directorypath = tk.Entry(self.master,text='',textvariable=self.var_dirPath)
        self.txt_directorypath.grid(row=1,column=2,padx=(5,10),pady=(10,0))


       

        


def clickFileLocationButton(self):
    dirPath = filedialog.askdirectory()
    print(dirPath)
    self.var_dirPath.set(dirPath)
    



if __name__ == "__main__":
    root = tk.Tk()
    App = ParentWindow(root)
    root.mainloop()
