# -*- coding: utf-8 -*-
"""
Created on Sun Oct 30 17:05:21 2016

@author: ffett
"""

#initdata.py
bob={'name':'Bob Smith','age':42,'pay':3000,'job':'dev'}
sue={'name':'Sue Jones','age':45,'pay':4000,'job':'hdw'}
tom={'name':'Tom',      'age':50,'pay':0,   'job':None}
db={}
db['bob']=bob
db['sue']=sue
db['tom']=tom
if __name__=='__main__':
    for key in db:
        print(key,'=>\n',db[key])