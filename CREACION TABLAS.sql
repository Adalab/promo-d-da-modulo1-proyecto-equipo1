USE proyecto1_equipo1;

CREATE TABLE tablasql(
index_sql INT NOT NULL AUTO_INCREMENT,
q10_part_1 VARCHAR(45),
q10_part_2 VARCHAR(45),
q10_part_3 VARCHAR(45),
q10_part_4 VARCHAR(45),
q10_part_5 VARCHAR(45),
q10_part_6 VARCHAR(45),
q10_part_7 VARCHAR(45),
q10_part_8 VARCHAR(45),
q10_part_9 VARCHAR(45),
q10_part_10 VARCHAR(45),
q10_part_11 VARCHAR(45),
q10_part_12 VARCHAR(45),
q10_part_13 VARCHAR(45),
q10_part_14 VARCHAR(45),
q10_part_15 VARCHAR(45),
q10_part_16 VARCHAR(45),
q10_other VARCHAR(45),
d482xta VARCHAR(45),
PRIMARY KEY (index_sql));

CREATE TABLE tablaxml(
index_xml INT NOT NULL AUTO_INCREMENT,
time VARCHAR(45),
age VARCHAR(45),
gender VARCHAR(45),
index_sql INT,
PRIMARY KEY (index_xml),
CONSTRAINT `fk_tablasql_tablaxml`
FOREIGN KEY (index_sql)
REFERENCES tablasql (index_sql));

CREATE TABLE tablatxt(
index_txt INT NOT NULL AUTO_INCREMENT,
index_sql INT, 
q3 VARCHAR(45),
q4 VARCHAR(45),
q5 VARCHAR(45),
q6 VARCHAR(45),
q7 VARCHAR(45),
q8 VARCHAR(45),
q9 VARCHAR(45),
q11 VARCHAR(45),
q12 VARCHAR(45),
q13 VARCHAR(45),
q14 VARCHAR(45),
q15 VARCHAR(45),
q16 VARCHAR(45),
q17 VARCHAR(45),
q20 VARCHAR(45),
q21 VARCHAR(45),
q22 VARCHAR(45),
q23 VARCHAR(45),
q24 VARCHAR(45),
q25 VARCHAR(45),
q26 VARCHAR(45),
q32 VARCHAR(45),
q33 VARCHAR(45),
q34 VARCHAR(45),
q35 VARCHAR(45),
q41 VARCHAR(45),
PRIMARY KEY (index_txt),
CONSTRAINT `fk_tablasql_tablatxt` 
FOREIGN KEY (index_sql)
REFERENCES tablasql (index_sql));

USE proyecto1_equipo1;

RENAME TABLE tablasql TO data_sql;

RENAME TABLE tablatxt TO data_txt;

RENAME TABLE tablaxml TO data_xml;
