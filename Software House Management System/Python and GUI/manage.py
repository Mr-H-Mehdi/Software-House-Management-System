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

import tryfour as tf
import functions as ff


mydb1=sqlc.connect(host="localhost",user="root",passwd="p;k;a;d;",database="tt2")
cur2=mydb1.cursor()

import view as vv
import manage as mm


def subclick_manage(container,conttd,sttr):    
        conttd.destroy()
        global emptv
        emptv = ck.CTkTabview(container,height=600,width=900)
        emptv.add("View Employees")
        emptv.add("Add Employees")
        emptv.add("Delete Employees")
        emptv.add("Update Employees")
        emptv.set("View Employees")
        emptv.place(x=20,y=100,height=777,width=1080)
        vv.view_emp(emptv.tab("View Employees"))
        mm.createaddempform(emptv.tab("Add Employees"))
        
        createdeleteempform(emptv.tab("Delete Employees"))
        
        ddff=ck.CTkLabel(emptv.tab("Update Employees"),text="Enter the ID of employee you want to update: ")
        ddff.place(relx=0.42,y=150)
        ddffe=ck.CTkEntry(emptv.tab("Update Employees"),placeholder_text="e10xx",placeholder_text_color="gray")
        ddffe.insert(0,"e10")
        ddffe.place(relx=0.46,y=190)
        ddffb=ck.CTkButton(emptv.tab("Update Employees"),text="Update",command=lambda: createupdateempform(ddffe.get()))
        ddffb.place(relx=0.46,y=220)
        # ff.chooseempmanage(emptv)
        
        # if sttr=="Employee":
        #     self.appearance_mode_optionemenu = ck.CTkOptionMenu(container, values=["View Employee", "Add Employee", "Delete Employee", "Update Employee"],height=70,width=180, command=self.empmanagedo)
        #     self.appearance_mode_optionemenu.place(x=300,y=20)
    
##############################################
#############       Add Employee form and func
##############################################

def createaddempform(contt):

    ww1=280
    ww2=380
    essnlabel=CTkLabel(contt, text="Employee SSN:")
    essnlabel.place(x=30+40,y=50)
    essntb=CTkEntry(contt)
    essntb.place(x=30+40,y=80, width=ww1)

    enamelabel=CTkLabel(contt, text="Employee Name:")
    enamelabel.place(x=30+500,y=50)
    enametb=CTkEntry(contt)
    enametb.place(x=30+500,y=80, width=ww1)


    enolabel=CTkLabel(contt, text="Employee ID:")
    enolabel.place(x=30+40,y=120)
    enotb=CTkEntry(contt)
    enotb.place(x=30+40,y=150, width=ww1)

    egenderlabel=CTkLabel(contt, text="Employee Gender:")
    egenderlabel.place(x=30+500,y=120)
    egendertb=CTkEntry(contt)
    egendertb.place(x=30+500,y=150, width=ww1)


    eteamlabel=CTkLabel(contt, text="Employee Team:")
    eteamlabel.place(x=30+40,y=190)
    eteamtb=CTkEntry(contt)
    eteamtb.place(x=30+40,y=220, width=ww1)

    erolelabel=CTkLabel(contt, text="Employee Role:")
    erolelabel.place(x=30+500,y=190)
    eroletb=CTkEntry(contt)
    eroletb.place(x=30+500,y=220, width=ww1)

    ephonelabel=CTkLabel(contt, text="Employee Phone:")
    ephonelabel.place(x=30+40,y=260)
    ephonetb=CTkEntry(contt)
    ephonetb.place(x=30+40,y=290, width=ww1)

    eranklabel=CTkLabel(contt, text="Employee Rank:")
    eranklabel.place(x=30+500,y=260)
    eranktb=CTkEntry(contt)
    eranktb.place(x=30+500,y=290, width=ww1)

    # ephonelabel=CTkLabel(contt, text="Employee Phone:")
    # ephonelabel.place(x=30+40,y=330)
    # ephonetb=CTkEntry(contt)
    # ephonetb.place(x=30+40,y=360, width=ww1)


    eaddresslabel=CTkLabel(contt, text="Employee Address:")
    eaddresslabel.place(x=30+40,y=330)
    eaddresstb=CTkEntry(contt)
    eaddresstb.place(x=30+40,y=360, width=ww2)


    eemaillabel=CTkLabel(contt, text="Employee Email:")
    eemaillabel.place(x=30+500,y=330)
    eemailtb=CTkEntry(contt)
    eemailtb.place(x=30+500,y=360, width=ww2)




    eaddbut=CTkButton(contt,text="Add Employee", command=lambda: addemp(essntb,
enametb,
enotb,
egendertb,
eteamtb,
eroletb,
ephonetb,
eranktb,
eaddresstb,
eemailtb))
    eaddbut.place(x=40,y=405)

##############################################
#############       Add Employee form and func
##############################################
def createdeleteempform(contt):
     ddff=ck.CTkLabel(contt,text="Enter the ID you want to delete: ")
     ddff.place(relx=0.44,y=150)
     ddffe=ck.CTkEntry(contt,placeholder_text="e10xx",placeholder_text_color="gray")
     ddffe.place(relx=0.46,y=190)
     ddffb=ck.CTkButton(contt,text="Delete",command=lambda: deletetheid(ddffe))
     ddffb.place(relx=0.46,y=220)
def deletetheid(ddffe):
    id=ddffe.get()
    # print(id)
    cur2.execute("select employeessn from employee where employeeid=%s",(id,))
    for i in cur2:
        j=i[0]
    cur2.execute("Delete from employee e where e.employeeid=%s", (id,))
    cur2.execute("select * from employee")
    # for i in cur2:
    #     print(i)
    cur2.execute("refresh view empp")
def createdf(crr):
    deletebylabel=CTkLabel(emptv.tab("Delete Employees"),text=f"Select the {crr} you want to delete:")
    deletebylabel.pack()
    empdeldataentry=CTkEntry(emptv.tab("Delete Employees"),text_color='red')
    empdeldataentry.pack()
def addemp(ssn,name,id,gender,team,role, phone, rank, address, email):
    passw= name.get().split()[-1]
    erec=(id.get(), role.get(), team.get(), rank.get(), ssn.get(), passw)  
    erec1=(id, role, team, rank, ssn )  
    edrec=(ssn.get(), name.get(), gender.get(), phone.get(), email.get(), address.get() )  
    edrec1=(ssn, name, gender, phone, email, address )  
        
    cur=mydb1.cursor()
    
    cur.execute("insert into employee_det(employeessn, employeename, employeesex, employeephone, employeeemail,employeeaddress) values (%s,%s,%s,%s,%s,%s) ",edrec)

    cur.execute("insert into employee(employeeid, role, teamid, rankid, employeessn,password) values (%s,%s,%s,%s,%s,%s) ",erec)
    mydb1.commit()
    
    for i in erec1:
        i.set("")
    for i in edrec1:
        i.set("")
    # for i in data:
    #     print(i)
    # try:
    #     cur=mydb.cursor()
    #     cur.execute("insert into 'emp'('eno','ename','eteam','eaddress') values (%s,%s,%s,%s) ",rec)
    #     mydb.commit
    # except:
    #     print(100)
# data1=mydb.cursor()
# cur2.execute("select count(*) from employee")
# for i in cur2:
#     print(i)

def createupdateempform(id):
    dialog1=CTk()
    dialog1.title("Update Employee Form")
    dialog1.geometry("900x600")
    dialog1.state("zoomed")
    # dialog1.resizable(0,0)
    id=(id,)
    cur2.execute("select employeessn from employee where employeeid=%s",id)
    for i in cur2:
        j=i[0]
        print(i)
    j=(j,)
    cur2.execute("select * from employee where employeeid=%s",id)
    arremp=[]
    for i in cur2:
        print(i)
        arremp=i
    
    cur2.execute("select * from employee_det where employeessn=%s",j)
    arrempd=[]
    for i in cur2:
        print(i)
        arrempd=i
    
    ww1=280
    ww2=380
    dialog=CTkFrame(dialog1)
    dialog.place(relheight=1,relwidth=1)
    

    enolabel=CTkLabel(dialog, text="Employee ID:")
    enolabel.place(x=30+40,y=50)
    enotb=CTkEntry(dialog)
    enotb.insert(0,id[0])
    enotb.configure(state=DISABLED)
    enotb.place(x=30+40,y=80, width=ww1)

    enamelabel=CTkLabel(dialog, text="Employee Name:")
    enamelabel.place(x=30+500,y=50)
    enametb=CTkEntry(dialog)
    enametb.insert(0,arrempd[1])
    enametb.place(x=30+500,y=80, width=ww1)

    essnlabel=CTkLabel(dialog, text="Employee SSN:")
    essnlabel.place(x=30+40,y=120)
    essntb=CTkEntry(dialog)
    essntb.insert(0,arrempd[0])
    essntb.place(x=30+40,y=150, width=ww1)


    egenderlabel=CTkLabel(dialog, text="Employee Gender:")
    egenderlabel.place(x=30+500,y=120)
    egendertb=CTkEntry(dialog)
    egendertb.insert(0,arrempd[2])
    egendertb.place(x=30+500,y=150, width=ww1)


    eteamlabel=CTkLabel(dialog, text="Employee Team:")
    eteamlabel.place(x=30+40,y=190)
    eteamtb=CTkEntry(dialog)
    eteamtb.insert(0,arremp[2])
    eteamtb.place(x=30+40,y=220, width=ww1)

    erolelabel=CTkLabel(dialog, text="Employee Role:")
    erolelabel.place(x=30+500,y=190)
    eroletb=CTkEntry(dialog)
    eroletb.insert(0,arremp[1])
    eroletb.place(x=30+500,y=220, width=ww1)

    ephonelabel=CTkLabel(dialog, text="Employee Phone:")
    ephonelabel.place(x=30+40,y=260)
    ephonetb=CTkEntry(dialog)
    ephonetb.insert(0,arrempd[3])
    ephonetb.place(x=30+40,y=290, width=ww1)

    eranklabel=CTkLabel(dialog, text="Employee Rank:")
    eranklabel.place(x=30+500,y=260)
    eranktb=CTkEntry(dialog)
    eranktb.insert(0,arremp[3])
    eranktb.place(x=30+500,y=290, width=ww1)

    # ephonelabel=CTkLabel(contt, text="Employee Phone:")
    # ephonelabel.place(x=30+40,y=330)
    # ephonetb=CTkEntry(contt)
    # ephonetb.place(x=30+40,y=360, width=ww1)


    eaddresslabel=CTkLabel(dialog, text="Employee Address:")
    eaddresslabel.place(x=30+40,y=330)
    eaddresstb=CTkEntry(dialog)
    eaddresstb.insert(0,arrempd[5])
    eaddresstb.place(x=30+40,y=360, width=ww2)


    eemaillabel=CTkLabel(dialog, text="Employee Email:")
    eemaillabel.place(x=30+500,y=330)
    eemailtb=CTkEntry(dialog)
    eemailtb.insert(0,arrempd[4])
    eemailtb.place(x=30+500,y=360, width=ww2)
    eaddbut=CTkButton(dialog,text="Update Employee")
    command=mm.uempvals(enotb.get(),eroletb.get(),eranktb.get(),eteamtb.get(),essntb.get(),enametb.get(),egendertb.get(),ephonetb.get(),eemailtb.get(),eaddresstb.get())
    eaddbut.place(x=55,y=405)


    dialog1.mainloop()

def uempvals(empid,role, rank, team,empssn,empname,empsex,empphone,empmail,empaddress):

    arr1=[empid,role, team, rank, empssn,empid]
    arr2=[empssn,empname,empsex,empphone, empmail,empaddress,empssn]
    cur2.execute("update employee set employeeid=%s, role=%s, teamid=%s, rankid=%s, employeessn=%s where employeeid=%s ;",arr1)
    cur2.execute("update employee_det set employeessn=%s, employeename=%s, employeesex=%s, employeephone=%s, employeeemail=%s, employeeaddress=%s where employeessn=%s;",arr2)