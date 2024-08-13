```
sqlite3 ./db/db.sqlite < ./db/schema.sql
sqlite3 ./db/db.sqlite < ./db/seed.sql

sqlite3 ./db/db.sqlite < ./qry/1.sql
sqlite3 ./db/db.sqlite < ./qry/2.sql
sqlite3 ./db/db.sqlite < ./qry/3.sql
sqlite3 ./db/db.sqlite < ./qry/4.sql

sqlite3 ./db/db.sqlite < ./db/seed.sql
```