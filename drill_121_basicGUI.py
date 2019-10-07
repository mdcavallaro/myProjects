# Python Ver: 3.7.3

# Author: Michael Cavallaro

# Purpose: Script will need to use Python 3 and Tkinter module.
#          Your script will need to re-create an exact copy of a GUI from
#          the supplied image at the bottom of the page.

from tkinter import *
import tkinter as tk #allows tk to be used to reference tkinter
from tkinter import messagebox

# Frame is the Tkinter frame class that our own class will inherit from
class ParentWindow(Frame):
    def __init__(self, master, *args, **kwargs):
        Frame.__init__(self, master, *args, **kwargs)

        #define the master frame configuration
        self.master = master #what is this doing??
        self.master.minsize(500,200) #(Height, Width)
        self.master.maxsize(500,200)
        self.master.title("Check Files")
        self.master.configure(bg="#F0F0F0")



 
        self.btn_browse = tk.Button(self.master,width=12,height=1,text='Browse...')
        self.btn_browse.grid(row=2,column=0,padx=(15,0),pady=(35,5),sticky=W)
        self.btn_browse2 = tk.Button(self.master,width=12,height=1,text='Browse...')
        self.btn_browse2.grid(row=3,column=0,padx=(15,0),pady=(5,5),sticky=W)
        self.btn_checkforfiles = tk.Button(self.master,width=12,height=3,text='Check for files...')
        self.btn_checkforfiles.grid(row=4,column=0,padx=(15,0),pady=(10,10),sticky=W)
        self.btn_closeprogram = tk.Button(self.master,width=12,height=3,text='Close Program')
        self.btn_closeprogram.grid(row=4,column=3,padx=(0,10),pady=(10,10),sticky=E)

        self.txt_browse = tk.Entry(self.master,text='',width=50)
        self.txt_browse.grid(row=2,column=2,rowspan=1,columnspan=2,padx=(15,0),pady=(35,5))
        self.txt_browse2 = tk.Entry(self.master,text='',width=50)
        self.txt_browse2.grid(row=3,column=2,rowspan=1,columnspan=2,padx=(15,0),pady=(5,5))
    



if __name__ == "__main__":
    root = tk.Tk()
    App = ParentWindow(root)
    root.mainloop()
