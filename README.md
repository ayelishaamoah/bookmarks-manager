Bookmark Manager
-----------------

Week 4 Challenge: Building a web app that stores web bookmarks in a database.

## Learning objectives
### Primary goal
Build a web app that uses a database

### Main focuses for this week
Agile and TDD

Engineering and 'Dev Recipes'

Databases

Tooling

## User Stories

```
As an organised person
So that I can quickly visit useful pages
I'd like to see a list of bookmarked pages
```

## Database setup

```
$ brew install postgresql # install postegresql
$ psql postgres # connect to postgres database
postgres=# CREATE DATABASE bookmark_manager # create a new bookmark_manager database
postgres=# \c bookmark_manager      #connect to the database
```

### Connect to the bookmark_manager database

Once you create the database you should be automatically connected and see the below prompt - if not you will need to connect to it. You will to run a SQL script:
```
bookmark_manager=# \i 01_create_bookmarks_table.sql # This should include the full file path
```
