# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization
_1. On macOS,

If you installed PostgreSQL via Homebrew:

To start manually:
pg_ctl -D /usr/local/var/postgres start

To stop manually:
pg_ctl -D /usr/local/var/postgres stop

To start PostgreSQL server now and relaunch at login:
brew services start postgresql

And stop PostgreSQL:
brew services stop postgresql

2. On macOS,

To back up your database, go to the root directory of your project in the terminal. Run the following command in the bash shell (not in psql):

pg_dump [YOUR DATABASE NAME] > database_backup.sql_

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
