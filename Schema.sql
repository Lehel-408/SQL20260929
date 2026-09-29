CREATE TABLE szemelytorzs(
    szemid VARCHAR(4) NOT NULL PRIMARY KEY,
    nev VARCHAR(45) NOT NULL,
    szulhely VARCHAR(20) NOT NULL,
    szulido DATE NOT NULL,
    fizetes INT NOT NULL,
    belepdatum DATE NOT NULL,
    kilepdatum DATE,
    beosztas VARCHAR(1) NOT NULL
)