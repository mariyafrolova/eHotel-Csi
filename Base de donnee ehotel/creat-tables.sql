
CREATE TABLE Chaine (
    ID_Chaine INTEGER,
    Adresse VARCHAR(255),
    Nmb_Hotels INTEGER,
    Email VARCHAR(255),
    Num_Tele VARCHAR(25),
    PRIMARY KEY(ID_Chaine)
);


CREATE TABLE Hotel (
    Hotel_ID INTEGER,
    Nmb_Chambres INTEGER,
    Adresse_H VARCHAR(255),
    HNum VARCHAR(25),
    Chambre_Dispo INTEGER,
    ID_Chaine INTEGER,
    PRIMARY KEY(Hotel_ID),
    FOREIGN KEY (ID_Chaine) REFERENCES Chaine(ID_Chaine)
);


CREATE TABLE Chambre (
    Num_Chambre INTEGER,
    Capacite VARCHAR(255),
    Prix NUMERIC,
    Commodite VARCHAR(255),
    Extendable_Room VARCHAR(255),
    Dommages VARCHAR(255),
    Hotel_ID INTEGER,
    PRIMARY KEY(Num_Chambre),
    FOREIGN KEY (Hotel_ID) REFERENCES Hotel(Hotel_ID)
);


CREATE TABLE Client (
    NAS INTEGER,
    Nom VARCHAR(255),
    Adresse VARCHAR(255),
    Date_En DATE,
    PRIMARY KEY(NAS)
);


CREATE TABLE Employee (
    NAS INTEGER,
    Nom VARCHAR(255),
    Adresse VARCHAR(255),
    Role VARCHAR(25),
    Hotel_ID INTEGER,
    NAS_Manager INTEGER,
    PRIMARY KEY(NAS),
    FOREIGN KEY (Hotel_ID) REFERENCES Hotel(Hotel_ID),
    FOREIGN KEY (NAS_Manager) REFERENCES Employee(NAS)
);


CREATE TABLE Manager (
    NAS INTEGER,
    Nom VARCHAR(255),
    Adresse VARCHAR(255),
    Role VARCHAR(25),
    Hotel_ID INTEGER,
    Nmb_Employee INTEGER,
    PRIMARY KEY(NAS),
    FOREIGN KEY (Hotel_ID) REFERENCES Hotel(Hotel_ID),
    FOREIGN KEY (NAS) REFERENCES Employee(NAS)
);

-- Table Réservation
CREATE TABLE Reservation (
    ID_Reservation INTEGER,
    Nom_Reservation VARCHAR(255),
    Date DATE,
    NAS_Employee INTEGER,
    Num_Chambre INTEGER,
    PRIMARY KEY(ID_Reservation),
    FOREIGN KEY (NAS_Employee) REFERENCES Employee(NAS),
    FOREIGN KEY (Num_Chambre) REFERENCES Chambre(Num_Chambre)
);


CREATE TABLE Reservation_Archive (
    ID_Reservation_Archive INTEGER,
    Nom_Reservation VARCHAR(255),
    Date DATE,
    Chambre VARCHAR(255),
    PRIMARY KEY(ID_Reservation_Archive)
);


CREATE TABLE Location (
    ID_Location INTEGER,
    Nom_Client VARCHAR(255),
    Date DATE,
    Chambre VARCHAR(255),
    NAS_Employee INTEGER,
    PRIMARY KEY(ID_Location),
    FOREIGN KEY (NAS_Employee) REFERENCES Employee(NAS)
);


CREATE TABLE Location_Archive (
    ID_Location_Archive INTEGER,
    Nom_Client VARCHAR(255),
    Chambre VARCHAR(255),
    PRIMARY KEY(ID_Location_Archive)
);


CREATE TABLE Sauvegarde (
    ID_Location INTEGER,
    ID_Location_Archive INTEGER,
    PRIMARY KEY(ID_Location, ID_Location_Archive),
    FOREIGN KEY (ID_Location) REFERENCES Location(ID_Location),
    FOREIGN KEY (ID_Location_Archive) REFERENCES Location_Archive(ID_Location_Archive)
);


CREATE TABLE Fait (
    NAS INTEGER,
    ID_Reservation INTEGER,
    PRIMARY KEY(NAS, ID_Reservation),
    FOREIGN KEY (NAS) REFERENCES Employee(NAS),
    FOREIGN KEY (ID_Reservation) REFERENCES Reservation(ID_Reservation)
);
