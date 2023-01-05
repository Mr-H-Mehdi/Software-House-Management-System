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

import manage as mm






def view_emp(contt):

        ff.cleaner(contt)
        # =======================================================================
        # ============================Displaying Student Information==============
        # =======================================================================



        view_student_frame = Frame(contt, bg="white")
        view_student_frame.place(x=45, y=50, height=660, width=1000)
        style = ttk.Style()
        style.configure("Treeview.Heading", font=('yu gothic ui', 18, "bold"), foreground="red")
        style.configure("Treeview", font=('yu gothic ui', 14, "bold"), foreground="#f29b0f")

        scroll_y = Scrollbar(view_student_frame, orient=VERTICAL)
        scroll_x = Scrollbar(view_student_frame, orient=HORIZONTAL)
        ttk.Style().configure('Treeview',rowheight=40)
        view_student_tree = ttk.Treeview(view_student_frame,
                                              columns=(
                                                  "Employee SSN", "Employee ID", "Employee NAME", "Employee TEAM", "Employee RANK", "Employee EMAIL", "Employee PHONE"),
                                              xscrollcommand=scroll_x.set, yscrollcommand=scroll_y.set)
        scroll_x.pack(side=BOTTOM, fill=X)
        scroll_y.pack(side=RIGHT, fill=Y)
        scroll_x.config(command=view_student_tree.xview)
        scroll_y.config(command=view_student_tree.yview)
                     

         # ==========================TreeView Heading====================
        view_student_tree.heading("Employee SSN", text="Employee SSN", anchor="w")
        view_student_tree.heading("Employee ID", text="Employee ID", anchor="w")
        view_student_tree.heading("Employee NAME", text="Employee NAME", anchor="w")
        view_student_tree.heading("Employee TEAM", text="Employee TEAM", anchor="w")
        view_student_tree.heading("Employee RANK", text="Employee RANK", anchor="w")
        view_student_tree.heading("Employee EMAIL", text="Employee EMAIL", anchor="w")
        view_student_tree.heading("Employee PHONE", text="Employee PHONE", anchor="w")
        view_student_tree["show"] = "headings"

        # ==========================TreeView Column====================
        view_student_tree.column("Employee SSN", width=200)
        view_student_tree.column("Employee ID", width=200)
        view_student_tree.column("Employee NAME", width=200)
        view_student_tree.column("Employee TEAM", width=200)
        view_student_tree.column("Employee RANK", width=200)
        view_student_tree.column("Employee EMAIL", width=270)
        view_student_tree.column("Employee PHONE", width=200)
        view_student_tree.pack(fill=BOTH, expand=1)

        # ========================== View Employee ====================
        view_emp2(view_student_tree)
def view_emp2(tree):
    cur2.execute("select * from tt2.empp")
    # data=cur
    for values in cur2:
            data_list = [values[0], values[1], values[2], values[3], values[4], values[5], values[6]]
            # print(data_list)
            tree.insert('', END, values=data_list )
    
def view_int(contt):
        ff.cleaner(contt)
        # =======================================================================
        # ============================Displaying Student Information==============
        # =======================================================================



        view_intern_frame = Frame(contt, bg="white")
        view_intern_frame.place(x=45, y=50, height=660, width=1000)
        style = ttk.Style()
        style.configure("Treeview.Heading", font=('yu gothic ui', 18, "bold"), foreground="red")
        style.configure("Treeview", font=('yu gothic ui', 14, "bold"), foreground="#f29b0f")

        scroll_y = Scrollbar(view_intern_frame, orient=VERTICAL)
        scroll_x = Scrollbar(view_intern_frame, orient=HORIZONTAL)
        ttk.Style().configure('Treeview',rowheight=40)
        view_student_tree = ttk.Treeview(view_intern_frame,
                                              columns=(
                                                  "Internee ID", "Internee NAME", "Internee EMAIL", "Time Remaining", "Internee TYPE",  "Internee TEAM"),
                                              xscrollcommand=scroll_x.set, yscrollcommand=scroll_y.set)
        scroll_x.pack(side=BOTTOM, fill=X)
        scroll_y.pack(side=RIGHT, fill=Y)
        scroll_x.config(command=view_student_tree.xview)
        scroll_y.config(command=view_student_tree.yview)
                     

         # ==========================TreeView Heading====================
        view_student_tree.heading("Internee ID", text="Internee ID", anchor="w")
        view_student_tree.heading("Internee NAME", text="Internee NAME", anchor="w")
        view_student_tree.heading("Internee EMAIL", text="Internee EMAIL", anchor="w")
        view_student_tree.heading("Time Remaining", text="Time Remaining", anchor="w")
        view_student_tree.heading("Internee TYPE", text="Internee TYPE", anchor="w")
        view_student_tree.heading("Internee TEAM", text="Internee TEAM", anchor="w")
        
        view_student_tree["show"] = "headings"

        # ==========================TreeView Column====================
        view_student_tree.column("Internee ID", width=200)
        view_student_tree.column("Internee NAME", width=200)
        view_student_tree.column("Internee EMAIL", width=270)
        view_student_tree.column("Internee TYPE", width=200)
        view_student_tree.column("Time Remaining", width=200)
        view_student_tree.column("Internee TEAM", width=200)
        view_student_tree.pack(fill=BOTH, expand=1)

        # ========================== View Employee ====================
        view_int2(view_student_tree)
def view_int2(tree):
    cur2.execute("select * from tt2.internee")
    # data=cur
    for values in cur2:
            data_list = [values[0], values[1], values[2], values[3], values[4], values[5]]
            # print(data_list)
            tree.insert('', END, values=data_list )


def view_cl(contt):
        ff.cleaner(contt)
        # =======================================================================
        # ============================Displaying Student Information==============
        # =======================================================================



        view_intern_frame = Frame(contt, bg="white")
        view_intern_frame.place(x=45, y=50, height=660, width=1000)
        style = ttk.Style()
        style.configure("Treeview.Heading", font=('yu gothic ui', 18, "bold"), foreground="red")
        style.configure("Treeview", font=('yu gothic ui', 14, "bold"), foreground="#f29b0f")

        scroll_y = Scrollbar(view_intern_frame, orient=VERTICAL)
        scroll_x = Scrollbar(view_intern_frame, orient=HORIZONTAL)
        ttk.Style().configure('Treeview',rowheight=40)
        view_student_tree = ttk.Treeview(view_intern_frame,
                                              columns=(
                                                  "Client ID", "Client NAME", "Client EMAIL", "Order Count"),
                                              xscrollcommand=scroll_x.set, yscrollcommand=scroll_y.set)
        scroll_x.pack(side=BOTTOM, fill=X)
        scroll_y.pack(side=RIGHT, fill=Y)
        scroll_x.config(command=view_student_tree.xview)
        scroll_y.config(command=view_student_tree.yview)
                     

         # ==========================TreeView Heading====================
        view_student_tree.heading("Client ID", text="Client ID", anchor="w")
        view_student_tree.heading("Client NAME", text="Client NAME", anchor="w")
        view_student_tree.heading("Client EMAIL", text="Client EMAIL", anchor="w")
        view_student_tree.heading("Order Count", text="Order Count", anchor="w")
        view_student_tree["show"] = "headings"

        # ==========================TreeView Column====================
        view_student_tree.column("Client ID", width=200)
        view_student_tree.column("Client NAME", width=200)
        view_student_tree.column("Client EMAIL", width=280)
        view_student_tree.column("Order Count", width=180)
        view_student_tree.pack(fill=BOTH, expand=1)

        # ========================== View Employee ====================
        view_cl2(view_student_tree)
def view_cl2(tree):
    cur2.execute("select * from tt2.cll")
    # data=cur
    for values in cur2:
            data_list = [values[0], values[1], values[2], values[3]]
            # print(data_list)
            tree.insert('', END, values=data_list )


def view_tbd(contt,typ):

        ff.cleaner(contt)
        # =======================================================================
        # ============================Displaying Student Information==============
        # =======================================================================

        if typ=='team':
            arr=["Team ID", "Team TITLE","Branch", "Department","Working on Project","Team LEAD ID","Team LEAD NAME"]
            view_student_frame = Frame(contt, bg="white")
            view_student_frame.place(x=45, y=50, height=660, width=1000)
            style = ttk.Style()
            style.configure("Treeview.Heading", font=('yu gothic ui', 18, "bold"), foreground="red")
            style.configure("Treeview", font=('yu gothic ui', 14, "bold"), foreground="#f29b0f")

            scroll_y = Scrollbar(view_student_frame, orient=VERTICAL)
            scroll_x = Scrollbar(view_student_frame, orient=HORIZONTAL)
            ttk.Style().configure('Treeview',rowheight=40)
            view_student_tree = ttk.Treeview(view_student_frame,
                                                columns=(
                                                    arr[0], arr[1],arr[2],arr[3],arr[4],arr[5],arr[6]),
                                                xscrollcommand=scroll_x.set, yscrollcommand=scroll_y.set)
            scroll_x.pack(side=BOTTOM, fill=X)
            scroll_y.pack(side=RIGHT, fill=Y)
            scroll_x.config(command=view_student_tree.xview)
            scroll_y.config(command=view_student_tree.yview)
                        

            # ==========================TreeView Heading====================
            view_student_tree.heading(arr[0], text=arr[0], anchor="w")
            view_student_tree.heading(arr[1], text=arr[1], anchor="w")
            view_student_tree.heading(arr[2], text=arr[2], anchor="w")
            view_student_tree.heading(arr[3], text=arr[3], anchor="w")
            view_student_tree.heading(arr[4], text=arr[4], anchor="w")
            view_student_tree.heading(arr[5], text=arr[5], anchor="w")
            view_student_tree.heading(arr[6], text=arr[6], anchor="w")
            view_student_tree["show"] = "headings"

            # ==========================TreeView Column====================
            view_student_tree.column(arr[0], width=200)
            view_student_tree.column(arr[1], width=200)
            view_student_tree.column(arr[2], width=250)
            view_student_tree.column(arr[3], width=200)
            view_student_tree.column(arr[4], width=250)
            view_student_tree.column(arr[5], width=270)
            view_student_tree.column(arr[6], width=200)
            view_student_tree.pack(fill=BOTH, expand=1)

            # ========================== View Employee ====================
            view_tbd2(view_student_tree, typ)
        if typ=='branch':

            arr=["Branch ID", "Branch Location","Department Count"]
            view_student_frame = Frame(contt, bg="white")
            view_student_frame.place(x=45, y=50, height=660, width=1000)
            style = ttk.Style()
            style.configure("Treeview.Heading", font=('yu gothic ui', 18, "bold"), foreground="red")
            style.configure("Treeview", font=('yu gothic ui', 14, "bold"), foreground="#f29b0f")

            scroll_y = Scrollbar(view_student_frame, orient=VERTICAL)
            scroll_x = Scrollbar(view_student_frame, orient=HORIZONTAL)
            ttk.Style().configure('Treeview',rowheight=40)
            view_student_tree = ttk.Treeview(view_student_frame,
                                                columns=(
                                                    arr[0], arr[1],arr[2]),
                                                xscrollcommand=scroll_x.set, yscrollcommand=scroll_y.set)
            scroll_x.pack(side=BOTTOM, fill=X)
            scroll_y.pack(side=RIGHT, fill=Y)
            scroll_x.config(command=view_student_tree.xview)
            scroll_y.config(command=view_student_tree.yview)
                        

            # ==========================TreeView Heading====================
            view_student_tree.heading(arr[0], text=arr[0], anchor="w")
            view_student_tree.heading(arr[1], text=arr[1], anchor="w")
            view_student_tree.heading(arr[2], text=arr[2], anchor="w")
            view_student_tree["show"] = "headings"

            # ==========================TreeView Column====================
            view_student_tree.column(arr[0], width=250)
            view_student_tree.column(arr[1], width=250)
            view_student_tree.column(arr[2], width=260)
            view_student_tree.pack(fill=BOTH, expand=1)

            # ========================== View Employee ====================
            view_tbd2(view_student_tree,typ)
        if typ=='project':
            arr=["Project ID", "Client ID","Details", "Progress","Budget"]
            view_student_frame = Frame(contt, bg="white")
            view_student_frame.place(x=45, y=50, height=660, width=1000)
            style = ttk.Style()
            style.configure("Treeview.Heading", font=('yu gothic ui', 18, "bold"), foreground="red")
            style.configure("Treeview", font=('yu gothic ui', 14, "bold"), foreground="#f29b0f")

            scroll_y = Scrollbar(view_student_frame, orient=VERTICAL)
            scroll_x = Scrollbar(view_student_frame, orient=HORIZONTAL)
            ttk.Style().configure('Treeview',rowheight=40)
            view_student_tree = ttk.Treeview(view_student_frame,
                                                columns=(
                                                    arr[0], arr[1],arr[2],arr[3],arr[4]),
                                                xscrollcommand=scroll_x.set, yscrollcommand=scroll_y.set)
            scroll_x.pack(side=BOTTOM, fill=X)
            scroll_y.pack(side=RIGHT, fill=Y)
            scroll_x.config(command=view_student_tree.xview)
            scroll_y.config(command=view_student_tree.yview)
                        

            # ==========================TreeView Heading====================
            view_student_tree.heading(arr[0], text=arr[0], anchor="w")
            view_student_tree.heading(arr[1], text=arr[1], anchor="w")
            view_student_tree.heading(arr[2], text=arr[2], anchor="w")
            view_student_tree.heading(arr[3], text=arr[3], anchor="w")
            view_student_tree.heading(arr[4], text=arr[4], anchor="w")
            view_student_tree["show"] = "headings"

            # ==========================TreeView Column====================
            view_student_tree.column(arr[0], width=200)
            view_student_tree.column(arr[1], width=200)
            view_student_tree.column(arr[2], width=400)
            view_student_tree.column(arr[3], width=200)
            view_student_tree.column(arr[4], width=200)
            view_student_tree.pack(fill=BOTH, expand=1)

            # ========================== View Employee ====================
            view_tbd2(view_student_tree, typ)
def nothing():
        view_student_frame = Frame(contt, bg="white")
        view_student_frame.place(x=45, y=50, height=660, width=1000)
        style = ttk.Style()
        style.configure("Treeview.Heading", font=('yu gothic ui', 18, "bold"), foreground="red")
        style.configure("Treeview", font=('yu gothic ui', 14, "bold"), foreground="#f29b0f")

        scroll_y = Scrollbar(view_student_frame, orient=VERTICAL)
        scroll_x = Scrollbar(view_student_frame, orient=HORIZONTAL)
        ttk.Style().configure('Treeview',rowheight=40)
        view_student_tree = ttk.Treeview(view_student_frame,
                                              columns=(
                                                  "Employee SSN", "Employee ID", "Employee NAME", "Employee TEAM", "Employee RANK", "Employee EMAIL", "Employee PHONE"),
                                              xscrollcommand=scroll_x.set, yscrollcommand=scroll_y.set)
        scroll_x.pack(side=BOTTOM, fill=X)
        scroll_y.pack(side=RIGHT, fill=Y)
        scroll_x.config(command=view_student_tree.xview)
        scroll_y.config(command=view_student_tree.yview)
                     

         # ==========================TreeView Heading====================
        view_student_tree.heading("Employee SSN", text="Employee SSN", anchor="w")
        view_student_tree.heading("Employee ID", text="Employee ID", anchor="w")
        view_student_tree.heading("Employee NAME", text="Employee NAME", anchor="w")
        view_student_tree.heading("Employee TEAM", text="Employee TEAM", anchor="w")
        view_student_tree.heading("Employee RANK", text="Employee RANK", anchor="w")
        view_student_tree.heading("Employee EMAIL", text="Employee EMAIL", anchor="w")
        view_student_tree.heading("Employee PHONE", text="Employee PHONE", anchor="w")
        view_student_tree["show"] = "headings"

        # ==========================TreeView Column====================
        view_student_tree.column("Employee SSN", width=200)
        view_student_tree.column("Employee ID", width=200)
        view_student_tree.column("Employee NAME", width=200)
        view_student_tree.column("Employee TEAM", width=200)
        view_student_tree.column("Employee RANK", width=200)
        view_student_tree.column("Employee EMAIL", width=270)
        view_student_tree.column("Employee PHONE", width=200)
        view_student_tree.pack(fill=BOTH, expand=1)

        # ========================== View Employee ====================
        view_tbd2(view_student_tree)
def view_tbd2(tree, typ):
    if typ=="team":
        cur2.execute("select * from tt2.teamm")
        # data=cur
        for values in cur2:
                data_list = [values[0], values[1], values[2], values[3], values[4], values[5], values[6]]
                # print(data_list)
                tree.insert('', END, values=data_list )
    if typ=="branch":    
        cur2.execute("select * from tt2.branch")
        # data=cur
        for values in cur2:
                data_list = [values[0], values[1], values[2]]
                # print(data_list)
                tree.insert('', END, values=data_list )
    if typ=="project":
        cur2.execute("select * from tt2.projj")
        # data=cur
        for values in cur2:
                data_list = [values[0], values[1], values[2], values[3], values[4]]
                # print(data_list)
                tree.insert('', END, values=data_list )
    
    # cur2.execute("select * from tt2.teamm")
    # # data=cur
    # for values in cur2:
    #         data_list = [values[0], values[1], values[2], values[3], values[4], values[5], values[6]]
    #         # print(data_list)
    #         tree.insert('', END, values=data_list )
   

def colss(col,val):
    if val<35:
        return col[0]
    elif val<75:
        return col[1]
    else:
        return col[2]