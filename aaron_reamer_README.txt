This a completely functional database for the portfolio of Aaron Reamer.
It behaves as a database for a plant nursury.
Additional information is in the documentation.

REQUIREMENTS:
- MySQL
- Jupyter notebook

The .sql files are designed to run on their own.
Jupyter notebook utilizes python and is required for the wrapper program.


ADDITIONAL FILES:

aaron_reamer_report.pdf: Contins information on the database

E-R_diagram.png: Contains an easily accesible image of the entities and relationships in the database.

SET UP INSTRUCTIONS:

Before running jupyter notebook file, the database must be created through the shell

1:
Create through MySQL shell
* open MySQL Shell
* connect to MySQL. Command example:
*
* -> \c [user]@[host]
*
* Make sure to switch language to sql. Commannd:
*
* -> \sql
*
* Run createAll.sql. Command example:
*
* -> \source "[File path]\aaron_reamer_createAll.sql"

Additionally, database can be created through MySQL Workbench
* Run createAll.sql as sql script

If a problem occurs, run dropAll.sql using one of the methods above then try again.

2:
Upload entire folder contents to Jupyter notebook in the same folder 

3:
Run Wrapper_program as a Jupyter notebook