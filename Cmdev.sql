-- INSERT INTO nonbinarytable2 VALUES ('abcdef', '一二三abc', '一二三abc');
INSERT INTO nonbinarytable2 VALUES ('abc', 'abc', 'abc');
INSERT INTO nonbinarytable2 VALUES ('abcdef', 'abcdef', 'abcdef');
INSERT INTO nonbinarytable2 VALUES ('abc', '@GT', '@GT');
INSERT INTO nonbinarytable2 VALUES ('abcdef', '@GTabc', '@GTabc');
INSERT INTO nonbinarytable2 VALUES ('abcdef', '@GT|', '@GT|');

CREATE TABLE nonbinarytable3 (
  n  int,
  s  VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_general_ci,
  s2 VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_general_cs
);

INSERT INTO nonbinarytable3
VALUES (1, 'aaa', 'aaa'),(2, 'AAA', 'AAA'),
       (3, 'bbb', 'bbb'),(4, 'BBB', 'BBB'),
       (5, 'abc', 'abc'),(6, 'ABC', 'ABC');


CREATE TABLE binarytable (
  b  BINARY(6),
  b2 VARBINARY(6)
);

INSERT INTO binarytable VALUES ('a', 'a');
INSERT INTO binarytable VALUES ('abc', 'abc');
INSERT INTO binarytable VALUES ('abcdef', 'abcdef');


CREATE TABLE enumtable (
  enumsize ENUM('XS', 'S', 'M', 'L', 'XL'),
  stringsize VARCHAR(2)
);

CREATE TABLE settable (
  workingday SET('MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN')
);

CREATE TABLE estable (
  enumsize  ENUM('XS', 'S', 'M', 'L', 'XL') CHARACTER SET latin1 COLLATE latin1_general_ci,
  enumsize2 ENUM('XS', 'S', 'M', 'L', 'XL') CHARACTER SET latin1 COLLATE latin1_general_cs,
  workingday  SET('MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN') CHARACTER SET latin1 COLLATE latin1_general_ci,
  workingday2 SET('MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN') CHARACTER SET latin1 COLLATE latin1_general_cs
);

INSERT INTO estable 
VALUES (1, 1, 21, 21),
       ('M','M','MON','MON'),
       ('M','M','mon','MON');

CREATE TABLE dttable (
  y4 YEAR(4),
  d  DATE,
  t  TIME,
  dt DATETIME,
  ts TIMESTAMP
);

DROP TABLE IF EXISTS deptlog;

CREATE TABLE deptlog (
  logno SERIAL,
  logdt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  message VARCHAR(64)
);

DROP TABLE IF EXISTS emplog;

CREATE TABLE emplog (
  logno bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  logdt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  message varchar(64),
  PRIMARY KEY logno (logno)
);

CREATE TABLE debug (
  fint TINYINT NOT NULL,
  fdouble DOUBLE(5, 2),
  fchar VARCHAR(3),
  fdate DATE DEFAULT '2000-01-01',
  ftime TIME,
  fdatetime DATETIME,
  ftimestamp TIMESTAMP,
  fyear YEAR,
  fenum ENUM('A', 'B', 'C'),
  fset SET('X', 'Y', 'Z')
);
