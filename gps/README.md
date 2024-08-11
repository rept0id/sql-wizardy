```
sqlite3 ./db/db.sqlite < ./db/schema.sql
sqlite3 ./db/db.sqlite < ./db/seed.sql

sqlite3 ./db/db.sqlite < ./qry1.sql
sqlite3 ./db/db.sqlite < ./qry2.sql

sqlite3 ./db/db.sqlite < ./db/seed.sql
```