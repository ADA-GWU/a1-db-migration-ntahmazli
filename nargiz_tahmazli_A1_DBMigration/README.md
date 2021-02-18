Hello User!

This file will guide you through the migration process step by step, so please read it carefully. 

You have been given four migration and four rollback files. Make sure to run rollback files according to the migration you have completed if need be. 

File correspondance:

migration_id_change.sql --> rollback_id_change.sql

migration_length_change.sql --> rollback_length_change.sql

migration_interests.sql --> rollback_interests.sql

If you wish to run all migration or rollback at once:

migration_complete.sql --> rollback_complete.sql

Download these files to your machine.

There are two ways you can run the files.

For the first way, open the terminal and type in the command:

psql -U (user) -h (localhost) -d (database name) -a -f (filepath)

Fill in the () accordingly, make sure to emit () signs after filling in the information:

user - The user that created the database, owner of the database. You can check who owns the database by entering PostgreSQL application on the machine, type "psql", press enter, then type "\l" and press enter. You will see the name of the owner of the database next to the name of the database. 

localhost - PostgreSQL server ip address. If you are running the files on your local machine, type "127.0.0.1".

database name - The name of the database the tables are currently in. You can check this by entering PostgreSQL application and repeating the process above, the intended database should be named accordingly.

filepath - You need to copy the file as pathname, and paste the pathname to the terminal.

(For example: psql -U nargiz -h 127.0.0.1 -d dummy -a -f /Users/nargiz/Desktop/migration_id_change.sql")

In case if the above method does not work, there is an alternative way to run the files after entering PostgreSQL on terminal:

Open terminal, type "psql" and press enter.

To see which databases are currently in the system, type "\l" and press enter.

Find the right database in which the tables are stored, and type "\c (database name)" and press enter.

(For example: \c dummy)

After connecting to the database, type the command "\i (filepath)" and press enter. 

(For example: \i /Users/nargiz/Desktop/migration_id_change.sql)

You will be able to see the changes immediately after running the files. 

This will complete your migration process. 








