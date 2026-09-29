CREATE TABLE szemelytorzs (
    szemid CHAR(4) NOT NULL,
    nev VARCHAR(45) NOT NULL,
    szulhely VARCHAR(20) NOT NULL,
    szulido DATE NOT NULL,
    fizetes INT NOT NULL,
    belepdatum DATE NOT NULL,
    kilepdatum DATE NULL,
    beosztas CHAR(1) NOT NULL,
    PRIMARY KEY (szemid),
    CONSTRAINT chk_beosztas CHECK (beosztas IN ('s', 'f', 'v'))
);

CREATE TABLE telephelytorzs (
    tid CHAR(4) NOT NULL,
    nev VARCHAR(45) NOT NULL,
    PRIMARY KEY (tid)
);

CREATE TABLE szemely_telep (
    id INT NOT NULL AUTO_INCREMENT,
    szemid CHAR(4) NOT NULL,
    tid CHAR(4) NOT NULL,
    aktiv CHAR(1) NOT NULL DEFAULT 'i',
    PRIMARY KEY (id),
    FOREIGN KEY (szemid) REFERENCES szemelytorzs(szemid),
    FOREIGN KEY (tid) REFERENCES telephelytorzs(tid),
    CONSTRAINT chk_aktiv CHECK (aktiv IN ('i', 'n'))
);
