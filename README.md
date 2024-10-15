# Media_DBMS
Assignment Submission by Vinal Dalcy Dsouza

Queries to retrieve data from the media database.

## How to run it

Make sure that you have a MediaDB.db file in the root folder of the project

## Queries

* Query 1: What are the last names and emails of all customer who made purchased in the store? 

Run query1.sql on dbrowser, open the MediaDB.db db and run the query1.sql file

```
sqlite3 MediaDB.db < Query1.sql
```

* Query 2: What are the names of each album and the artist who created it?
```
sqlite3 MediaDB.db < Query2.sql
```
* Query 3: What are the total number of unique customers for each state, ordered alphabetically by state?
```
sqlite3 MediaDB.db < Query3.sql
```
* Query 4: Which states have more than 10 unique customers?
```
sqlite3 MediaDB.db < Query4.sql
```

* Query 5: What are the names of the artists who made an album containing the substring "symphony" in the album title?
```
sqlite3 MediaDB.db < Query5.sql
```

* Query 6: What are the names of all artists who performed MPEG (video or audio) tracks in either the "Brazilian Music" or the "Grunge" playlists?
```
sqlite3 MediaDB.db < Query6.sql
```

* Query 7: How many artists published at least 10 MPEG tracks?
```
sqlite3 MediaDB.db < Query7.sql
```

* Query 8: What is the total length of each playlist in hours? List the playlist id and name of only those playlists that are longer than 2 hours, along with the length in hours rounded to two decimals.
```
sqlite3 MediaDB.db < Query8.sql
```

* Query 9: Creative addition: Define a new meaningful query using at least three tables, and some window function. Explain clearly what your query achieves, and what the results mean. For creative addition, the query is built to rank the genre based on the number of albums it has. Idea behind this is a genre will have more number of albums in case its popular and hence could be meangingful to certain audiences.
```
sqlite3 MediaDB.db < Query9.sql
```
