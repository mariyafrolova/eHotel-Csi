DROP TABLE IF EXISTS Chaine CASCADE;

CREATE TABLE Chaine (
    ID_Chaine SERIAL PRIMARY KEY,
    Adresse VARCHAR(255),
    Nmb_Hotels INTEGER,
    Email VARCHAR(255),
    Num_Tele VARCHAR(25)
    --SERIAL PRIMARY KEY(ID_Chaine)
);

DROP TABLE IF EXISTS Hotel CASCADE;
CREATE TABLE Hotel (
    Hotel_ID SERIAL PRIMARY KEY,
    Nmb_Chambres INTEGER,
    Adresse_H VARCHAR(255),
    HNum VARCHAR(25),
    Chambre_Dispo INTEGER,
    ID_Chaine INTEGER,
    --SERIAL PRIMARY KEY(Hotel_ID),
    FOREIGN KEY (ID_Chaine) REFERENCES Chaine(ID_Chaine)
);

DROP TABLE IF EXISTS Chambre CASCADE;
CREATE TABLE Chambre (
    Num_Chambre SERIAL PRIMARY KEY,
    Capacite VARCHAR(255),
    Prix NUMERIC,
    Commodite VARCHAR(255),
    Extendable_Room VARCHAR(255),
    Dommages VARCHAR(255),
    Hotel_ID INTEGER,
    --SERIAL KEY(Num_Chambre),
    FOREIGN KEY (Hotel_ID) REFERENCES Hotel(Hotel_ID)
);

DROP TABLE IF EXISTS Client CASCADE;
CREATE TABLE Client (
    NAS SERIAL PRIMARY KEY,
    Nom VARCHAR(255),
    Adresse VARCHAR(255),
    Date_En DATE
    --PRIMARY KEY(NAS)
);

DROP TABLE IF EXISTS Employee CASCADE;
CREATE TABLE Employee (
    NAS SERIAL PRIMARY KEY,
    Nom VARCHAR(255),
    Adresse VARCHAR(255),
    Role VARCHAR(25),
    Hotel_ID INTEGER,
    NAS_Manager INTEGER,
    --PRIMARY KEY(NAS),
    FOREIGN KEY (Hotel_ID) REFERENCES Hotel(Hotel_ID),
    FOREIGN KEY (NAS_Manager) REFERENCES Employee(NAS)
);

DROP TABLE IF EXISTS Manager CASCADE;
CREATE TABLE Manager (
    NAS INTEGER PRIMARY KEY,
    Nom VARCHAR(255),
    Adresse VARCHAR(255),
    Role VARCHAR(25),
    Hotel_ID INTEGER,
    Nmb_Employee INTEGER,
    --PRIMARY KEY(NAS),
    FOREIGN KEY (Hotel_ID) REFERENCES Hotel(Hotel_ID),
    FOREIGN KEY (NAS) REFERENCES Employee(NAS)
);

-- Table Réservation
DROP TABLE IF EXISTS Reservation CASCADE;
CREATE TABLE Reservation (
    ID_Reservation SERIAL PRIMARY KEY,
    Nom_Reservation VARCHAR(255),
    Date DATE,
    NAS_Employee INTEGER,
    Num_Chambre INTEGER,
    --SERIAL PRIMARY KEY(ID_Reservation),
    FOREIGN KEY (NAS_Employee) REFERENCES Employee(NAS),
    FOREIGN KEY (Num_Chambre) REFERENCES Chambre(Num_Chambre)
);

DROP TABLE IF EXISTS Reservation_Archive CASCADE;
CREATE TABLE Reservation_Archive (
    ID_Reservation_Archive SERIAL PRIMARY KEY,
    Nom_Reservation VARCHAR(255),
    Date DATE,
    Chambre VARCHAR(255)
    --SERIAL PRIMARY KEY(ID_Reservation_Archive)
);

DROP TABLE IF EXISTS Location CASCADE;
CREATE TABLE Location (
    ID_Location SERIAL PRIMARY KEY,
    Nom_Client VARCHAR(255),
    Date DATE,
    Chambre VARCHAR(255),
    NAS_Employee INTEGER,
    --SERIAL PRIMARY KEY(ID_Location),
    FOREIGN KEY (NAS_Employee) REFERENCES Employee(NAS)
);

DROP TABLE IF EXISTS Location_Archive CASCADE;
CREATE TABLE Location_Archive (
    ID_Location_Archive SERIAL PRIMARY KEY,
    Nom_Client VARCHAR(255),
    Chambre VARCHAR(255)
    --SERIAL PRIMARY KEY(ID_Location_Archive)
);

DROP TABLE IF EXISTS Sauvegarde CASCADE;
CREATE TABLE Sauvegarde (
    ID_Location INTEGER,
    ID_Location_Archive INTEGER,
    PRIMARY KEY(ID_Location, ID_Location_Archive),
    FOREIGN KEY (ID_Location) REFERENCES Location(ID_Location),
    FOREIGN KEY (ID_Location_Archive) REFERENCES Location_Archive(ID_Location_Archive)
);

DROP TABLE IF EXISTS Fait CASCADE;
CREATE TABLE Fait (
    NAS INTEGER,
    ID_Reservation INTEGER,
    PRIMARY KEY(NAS, ID_Reservation),
    FOREIGN KEY (NAS) REFERENCES Employee(NAS),
    FOREIGN KEY (ID_Reservation) REFERENCES Reservation(ID_Reservation)
);
