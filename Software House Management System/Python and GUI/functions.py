from datetime import *
import time
from math import *
import random
import sys
import tkinter as tk
from tkinter import *
import tkinter.ttk as ttk
from tkinter.constants import *
import os.path
import customtkinter as ck
from customtkinter import *
from PIL import Image,ImageTk
import PIL as pl

import mysql.connector as sqlc

mydb=sqlc.connect(host="localhost",user="root",passwd="p;k;a;d;",database="tt")
data=mydb.cursor()


# aa=cur.execute("select * from emp")
def ddisp(contt):
    i=ck.CTkButton(contt,text="made")
    i.place(x=10,y=10)
def disp(aa):
    print(aa)
    for i in aa:
        print(i)
        for j in i:
            print (j)
# print(12345)
def cleaner (container):
    for i in container.winfo_children():
        i.destroy()


def view_emp2(tree):
    data.execute("select * from emp")
    # data=cur
    for values in data:
            data_list = [values[0], values[1], values[2], values[3]]
            # print(data_list)
            tree.insert('', END, values=data_list)

    print(99)
def view_emp(contt):

        cleaner(contt)
        # =======================================================================
        # ============================Displaying Student Information==============
        # =======================================================================



        view_student_frame = Frame(contt, bg="white")
        view_student_frame.place(x=45, y=70, height=680, width=1000)
        style = ttk.Style()
        style.configure("Treeview.Heading", font=('yu gothic ui', 15, "bold"), foreground="red")
        style.configure("Treeview", font=('yu gothic ui', 13, "bold"), foreground="#f29b0f")

        scroll_y = Scrollbar(view_student_frame, orient=VERTICAL)
        scroll_x = Scrollbar(view_student_frame, orient=HORIZONTAL)
        view_student_tree = ttk.Treeview(view_student_frame,
                                              columns=(
                                                  "Emp ID", "Emp NAME", "Emp TEAM", "PHONE NO."),
                                              xscrollcommand=scroll_x.set, yscrollcommand=scroll_y.set)
        scroll_x.pack(side=BOTTOM, fill=X)
        scroll_y.pack(side=RIGHT, fill=Y)
        scroll_x.config(command=view_student_tree.xview)
        scroll_y.config(command=view_student_tree.yview)
                     

         # ==========================TreeView Heading====================
        view_student_tree.heading("Emp ID", text="Emp ID",anchor="w")
        view_student_tree.heading("Emp NAME", text="Emp NAME")
        view_student_tree.heading("Emp TEAM", text="Emp TEAM")
        view_student_tree.heading("PHONE NO.", text="PHONE NO.")
        view_student_tree["show"] = "headings"

        # ==========================TreeView Column====================
        view_student_tree.column("Emp ID", width=50)
        view_student_tree.column("Emp NAME", width=150)
        view_student_tree.column("Emp TEAM", width=150)
        view_student_tree.column("PHONE NO.", width=100)
        view_student_tree.pack(fill=BOTH, expand=1)

        # ========================== View Employee ====================
        view_emp2(view_student_tree)













##############################################
#############       Add Employee form and func
##############################################
def createaddempform(contt):
    enamelabel=CTkLabel(contt, text="Employee Name:")
    enamelabel.place(x=30,y=50)
    enametb=CTkEntry(contt)
    enametb.place(x=30,y=80)

    enolabel=CTkLabel(contt, text="Employee ID:")
    enolabel.place(x=30,y=140)
    enotb=CTkEntry(contt)
    enotb.place(x=30,y=170)
    eteamlabel=CTkLabel(contt, text="Employee Team:")
    eteamlabel.place(x=30,y=220)
    eteamtb=CTkEntry(contt)
    eteamtb.place(x=30,y=250)
    eaddresslabel=CTkLabel(contt, text="Employee Address:")
    eaddresslabel.place(x=30,y=310)
    eaddresstb=CTkEntry(contt)
    eaddresstb.place(x=30,y=360)

    eaddbut=CTkButton(contt,text="Add Employee", command=lambda: addemp(enotb.get(),enametb.get(),eteamtb.get(),eaddresstb.get()))
    eaddbut.place(x=40,y=405)
    # 

def addemp(eid,ename,eteam,eaddress):
    rec=(eid,ename,eteam,eaddress)  
    cur=mydb.cursor()
    cur.execute("insert into emp(eno, ename, eteam, eaddress) values (%s,%s,%s,%s) ",rec)
    mydb.commit()
    data.execute("select * from emp")
    for i in data:
        print(i)
    # try:
    #     cur=mydb.cursor()
    #     cur.execute("insert into 'emp'('eno','ename','eteam','eaddress') values (%s,%s,%s,%s) ",rec)
    #     mydb.commit
    # except:
    #     print(100)
data1=mydb.cursor()
data1.execute("select * from emp")
for i in data1:
    print(i)