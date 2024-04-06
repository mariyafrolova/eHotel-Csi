INSERT INTO Chaine ( Adresse, Nmb_Hotels, Email, Num_Tele) VALUES
( 'Adresse Chaine 1', 8, 'email1@chaine.com', '0123456789'),
('Adresse Chaine 2', 8, 'email2@chaine.com', '0123456789'),
( 'Adresse Chaine 3', 8, 'email3@chaine.com', '0123456789'),
( 'Adresse Chaine 4', 8, 'email4@chaine.com', '0123456789'),
( 'Adresse Chaine 5', 8, 'email5@chaine.com', '0123456789');

-- Insertions pour la chaîne 1
INSERT INTO Hotel ( Nmb_Chambres, Adresse_H, HNum, Chambre_Dispo, ID_Chaine) VALUES
( 100, '100 Boulevard du Progrès, Ville E', 'C1H1', 80, 1),
( 120, '101 Boulevard du Progrès, Ville E', 'C1H2', 100, 1),
( 150, '102 Boulevard du Progrès, Ville F', 'C1H3', 120, 1),
( 80, '103 Boulevard du Progrès, Ville F', 'C1H4', 60, 1),
( 90, '104 Boulevard du Progrès, Ville G', 'C1H5', 70, 1),
( 110, '105 Boulevard du Progrès, Ville G', 'C1H6', 90, 1),
( 130, '106 Boulevard du Progrès, Ville H', 'C1H7', 110, 1),
( 140, '107 Boulevard du Progrès, Ville H', 'C1H8', 120, 1);

-- Insertions pour la chaîne 2
INSERT INTO Hotel ( Nmb_Chambres, Adresse_H, HNum, Chambre_Dispo, ID_Chaine) VALUES
( 100, '200 Allée de lInnovation, Ville E', 'C2H1', 80, 2),
( 120, '201 Allée de l’Innovation, Ville E', 'C2H2', 100, 2),
( 150, '202 Allée de l’Innovation, Ville F', 'C2H3', 120, 2),
( 80, '203 Allée de l’Innovation, Ville F', 'C2H4', 60, 2),
( 90, '204 Allée de l’Innovation, Ville G', 'C2H5', 70, 2),
( 110, '205 Allée de l’Innovation, Ville G', 'C2H6', 90, 2),
( 130, '206 Allée de l’Innovation, Ville H', 'C2H7', 110, 2),
( 140, '207 Allée de l’Innovation, Ville H', 'C2H8', 120, 2);
-- Insertions pour la chaîne 3
INSERT INTO Hotel ( Nmb_Chambres, Adresse_H, HNum, Chambre_Dispo, ID_Chaine) VALUES
( 100, '300 Avenue de la Liberté, Ville A', 'C3H1', 80, 3),
( 120, '301 Avenue de la Liberté, Ville A', 'C3H2', 100, 3),
( 150, '302 Avenue de la Liberté, Ville B', 'C3H3', 120, 3),
( 80, '303 Avenue de la Liberté, Ville B', 'C3H4', 60, 3),
( 90, '304 Avenue de la Liberté, Ville C', 'C3H5', 70, 3),
( 110, '305 Avenue de la Liberté, Ville C', 'C3H6', 90, 3),
( 130, '306 Avenue de la Liberté, Ville D', 'C3H7', 110, 3),
( 140, '307 Avenue de la Liberté, Ville D', 'C3H8', 120, 3);

-- Insertions pour la chaîne 4
INSERT INTO Hotel ( Nmb_Chambres, Adresse_H, HNum, Chambre_Dispo, ID_Chaine) VALUES
( 100, '400 Avenue de la Paix, Ville A', 'C4H1', 80, 4),
( 120, '401 Avenue de la Paix, Ville A', 'C4H2', 100, 4),
( 150, '402 Avenue de la Paix, Ville B', 'C4H3', 120, 4),
( 80, '403 Avenue de la Paix, Ville B', 'C4H4', 60, 4),
( 90, '404 Avenue de la Paix, Ville C', 'C4H5', 70, 4),
( 110, '405 Avenue de la Paix, Ville C', 'C4H6', 90, 4),
( 130, '406 Avenue de la Paix, Ville D', 'C4H7', 110, 4),
( 140, '407 Avenue de la Paix, Ville D', 'C4H8', 120, 4);

-- Insertions pour la chaîne 5
INSERT INTO Hotel ( Nmb_Chambres, Adresse_H, HNum, Chambre_Dispo, ID_Chaine) VALUES
( 100, '500 Avenue de lEspoir Ville A', 'C5H1', 80, 5),
( 120, '501 Avenue de lEspoir, Ville A', 'C5H2', 100, 5),
( 150, '502 Avenue de lEspoir, Ville B', 'C5H3', 120, 5),
( 80, '503 Avenue de lEspoir, Ville B', 'C5H4', 60, 5),
( 90, '504 Avenue de lEspoir, Ville C', 'C5H5', 70, 5),
( 110, '505 Avenue de lEspoir, Ville C', 'C5H6', 90, 5),
( 130, '506 Avenue de lEspoir, Ville D', 'C5H7', 110, 5),
( 140, '507 Avenue de lEspoir, Ville D', 'C5H8', 120, 5);


-- Insertions pour les chambres de l'hôtel 1
INSERT INTO Chambre (Capacite, Prix, Commodite, Extendable_Room, Dommages, Hotel_ID) VALUES
('simple', 50, 'TV, air conditionné', 'non', 'aucun', 1),
('double', 75, 'TV, air conditionné, réfrigérateur', 'oui', 'aucun', 1),
('suite', 120, 'TV, air conditionné, réfrigérateur, vue mer', 'oui', 'aucun', 1),
('double', 80, 'TV, air conditionné, réfrigérateur, vue montagne', 'non', 'aucun', 1),
('familiale', 100, 'TV, air conditionné, réfrigérateur, vue mer, balcon', 'oui', 'aucun', 1);


-- Insertions pour les chambres de l'hôtel 2
INSERT INTO Chambre (Capacite, Prix, Commodite, Extendable_Room, Dommages, Hotel_ID) VALUES
('simple', 55, 'TV, air conditionné', 'non', 'aucun', 2),
('double', 70, 'TV, air conditionné, réfrigérateur', 'non', 'aucun', 2),
('suite', 130, 'TV, air conditionné, réfrigérateur, vue ville', 'oui', 'aucun', 2),
('double', 85, 'TV, air conditionné, réfrigérateur, vue jardin', 'oui', 'aucun', 2),
('familiale', 105, 'TV, air conditionné, réfrigérateur, vue ville, balcon', 'oui', 'aucun', 2);

-- Insertions pour les chambres de l'hôtel 3
INSERT INTO Chambre (Capacite, Prix, Commodite, Extendable_Room, Dommages, Hotel_ID) VALUES
('simple', 60, 'TV, air conditionné, bouilloire', 'non', 'aucun', 3),
('double', 80, 'TV, air conditionné, réfrigérateur, bouilloire', 'oui', 'aucun', 3),
('suite', 140, 'TV, air conditionné, réfrigérateur, vue montagne', 'oui', 'aucun', 3),
('double', 90, 'TV, air conditionné, réfrigérateur, vue parc', 'oui', 'aucun', 3),
('familiale', 110, 'TV, air conditionné, réfrigérateur, vue parc, balcon', 'oui', 'aucun', 3);

-- Insertions pour les chambres de l'hôtel 4
INSERT INTO Chambre (Capacite, Prix, Commodite, Extendable_Room, Dommages, Hotel_ID) VALUES
('simple', 65, 'TV, Wi-Fi, air conditionné', 'non', 'aucun', 4),
('double', 85, 'TV, Wi-Fi, air conditionné, réfrigérateur', 'oui', 'aucun', 4),
('suite', 150, 'TV, Wi-Fi, air conditionné, réfrigérateur, vue mer', 'oui', 'aucun', 4),
('double', 95, 'TV, Wi-Fi, air conditionné, réfrigérateur, balcon', 'non', 'aucun', 4),
('familiale', 115, 'TV, Wi-Fi, air conditionné, réfrigérateur, vue mer, balcon', 'oui', 'aucun', 4);

-- Insertions pour les chambres de l'hôtel 5
INSERT INTO Chambre (Capacite, Prix, Commodite, Extendable_Room, Dommages, Hotel_ID) VALUES
('simple', 70, 'TV, Wi-Fi, air conditionné, coffre-fort', 'non', 'aucun', 5),
('double', 90, 'TV, Wi-Fi, air conditionné, réfrigérateur, coffre-fort', 'oui', 'aucun', 5),
('suite', 160, 'TV, Wi-Fi, air conditionné, réfrigérateur, coffre-fort, vue jardin', 'oui', 'aucun', 5),
('double', 100, 'TV, Wi-Fi, air conditionné, réfrigérateur, coffre-fort, balcon', 'oui', 'aucun', 5),
('familiale', 120, 'TV, Wi-Fi, air conditionné, réfrigérateur, coffre-fort, vue jardin, balcon', 'oui', 'aucun', 5);

--Insertions donnees de base pour clien for testind pupose
INSERT INTO Client (Nom, Adresse, Date_En) VALUES
('John Doe', '123 Rue Exemple, Ville A', '2023-04-01'),
('Jane Smith', '456 Rue Autre, Ville B', '2023-04-02');

-- Employés de l'hôtel 1 (incluant le gestionnaire)
INSERT INTO Employee (Nom, Adresse, Role, Hotel_ID, NAS_Manager) VALUES
('Alice Manager', '789 Rue Manager, Ville C', 'gestionnaire', 1, NULL), -- Gestionnaire
('Bob Employé', '101 Rue Employé, Ville D', 'réceptionniste', 1, (SELECT NAS FROM Employee WHERE Role = 'gestionnaire' AND Hotel_ID = 1)),
('Charlie Employé', '202 Rue Employé, Ville E', 'maintenance', 1, (SELECT NAS FROM Employee WHERE Role = 'gestionnaire' AND Hotel_ID = 1));

-- Assigner Alice comme gestionnaire dans la table Manager
INSERT INTO Manager (NAS, Nom, Adresse, Role, Hotel_ID, Nmb_Employee) VALUES
((SELECT NAS FROM Employee WHERE Nom = 'Alice Manager'), 'Alice Manager', '789 Rue Manager, Ville C', 'gestionnaire', 1, 2);
