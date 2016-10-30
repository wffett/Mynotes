#dump_db_file.py
from make_db_file import loadDbase
db=loadDbase('people-file')
for key in db:
    print(key,'=>\n',db[key])
print(db['sue']['name'])
