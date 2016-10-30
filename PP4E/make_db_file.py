# -*- coding: utf-8 -*-
"""
Created on Sun Oct 30 17:08:42 2016

@author: ffett
"""
# make_db_file.py

"""
{
tom: {'name': 'Tom', 'pay': 0, 'job': None, 'age': 50}
bob: {'name': 'Bob Smith', 'pay': 3000, 'job': 'dev', 'age': 42}
sue: {'name': 'Sue Jones', 'pay': 4000, 'job': 'hdw', 'age': 45}
} 
 """


dbfilename='people-file'
ENDDB='enddb.'
ENDREC='endrec.'
RECSEP='=>'

#===================
def storeDbase(db,dbfilename=dbfilename):
    dbfile=open(dbfilename,'w')
    for key in db:
        print(key,file=dbfile)
        for (name,value) in db[key].items():
            print(name+RECSEP+repr(value),file=dbfile)
        print(ENDREC,file=dbfile)
    print(ENDDB,file=dbfile)
    dbfile.close()
#====================
def loadDbase(dbfilename=dbfilename):
    dbfile=open(dbfilename)
    import sys
    sys.stdin=dbfile
    db={}
    key=input()
    while key!=ENDDB:
        rec={}
        field=input()
        while field!=ENDREC:
            name,value=field.split(RECSEP)
            rec[name]=eval(value)
            field=input()
        db[key]=rec
        key=input()
    return db

if __name__=='__main__':
    from initdata import db
    storeDbase(db)
