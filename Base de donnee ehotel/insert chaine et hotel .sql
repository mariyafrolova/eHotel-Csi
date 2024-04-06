INSERT INTO Chaine (ID_Chaine, Adresse, Nmb_Hotels, Email, Num_Tele) VALUES
(1, 'Adresse Chaine 1', 8, 'email1@chaine.com', '0123456789'),
(2, 'Adresse Chaine 2', 8, 'email2@chaine.com', '0123456789'),
(3, 'Adresse Chaine 3', 8, 'email3@chaine.com', '0123456789'),
(4, 'Adresse Chaine 4', 8, 'email4@chaine.com', '0123456789'),
(5, 'Adresse Chaine 5', 8, 'email5@chaine.com', '0123456789');

-- Insertions pour la chaîne 1
INSERT INTO Hotel (Hotel_ID, Nmb_Chambres, Adresse_H, HNum, Chambre_Dispo, ID_Chaine) VALUES
(1, 100, '100 Boulevard du Progrès, Ville E', 'C1H1', 80, 1),
(2, 120, '101 Boulevard du Progrès, Ville E', 'C1H2', 100, 1),
(3, 150, '102 Boulevard du Progrès, Ville F', 'C1H3', 120, 1),
(4, 80, '103 Boulevard du Progrès, Ville F', 'C1H4', 60, 1),
(5, 90, '104 Boulevard du Progrès, Ville G', 'C1H5', 70, 1),
(6, 110, '105 Boulevard du Progrès, Ville G', 'C1H6', 90, 1),
(7, 130, '106 Boulevard du Progrès, Ville H', 'C1H7', 110, 1),
(8, 140, '107 Boulevard du Progrès, Ville H', 'C1H8', 120, 1);

-- Insertions pour la chaîne 2
INSERT INTO Hotel (Hotel_ID, Nmb_Chambres, Adresse_H, HNum, Chambre_Dispo, ID_Chaine) VALUES
(9, 100, '200 Allée de l’Innovation, Ville E', 'C2H1', 80, 2),
(10, 120, '201 Allée de l’Innovation, Ville E', 'C2H2', 100, 2),
(11, 150, '202 Allée de l’Innovation, Ville F', 'C2H3', 120, 2),
(12, 80, '203 Allée de l’Innovation, Ville F', 'C2H4', 60, 2),
(13, 90, '204 Allée de l’Innovation, Ville G', 'C2H5', 70, 2),
(14, 110, '205 Allée de l’Innovation, Ville G', 'C2H6', 90, 2),
(15, 130, '206 Allée de l’Innovation, Ville H', 'C2H7', 110, 2),
(16, 140, '207 Allée de l’Innovation, Ville H', 'C2H8', 120, 2);
-- Insertions pour la chaîne 3
INSERT INTO Hotel (Hotel_ID, Nmb_Chambres, Adresse_H, HNum, Chambre_Dispo, ID_Chaine) VALUES
(17, 100, '300 Avenue de la Liberté, Ville A', 'C3H1', 80, 3),
(18, 120, '301 Avenue de la Liberté, Ville A', 'C3H2', 100, 3),
(19, 150, '302 Avenue de la Liberté, Ville B', 'C3H3', 120, 3),
(20, 80, '303 Avenue de la Liberté, Ville B', 'C3H4', 60, 3),
(21, 90, '304 Avenue de la Liberté, Ville C', 'C3H5', 70, 3),
(22, 110, '305 Avenue de la Liberté, Ville C', 'C3H6', 90, 3),
(23, 130, '306 Avenue de la Liberté, Ville D', 'C3H7', 110, 3),
(24, 140, '307 Avenue de la Liberté, Ville D', 'C3H8', 120, 3);

-- Insertions pour la chaîne 4
INSERT INTO Hotel (Hotel_ID, Nmb_Chambres, Adresse_H, HNum, Chambre_Dispo, ID_Chaine) VALUES
(25, 100, '400 Avenue de la Paix, Ville A', 'C4H1', 80, 4),
(26, 120, '401 Avenue de la Paix, Ville A', 'C4H2', 100, 4),
(27, 150, '402 Avenue de la Paix, Ville B', 'C4H3', 120, 4),
(28, 80, '403 Avenue de la Paix, Ville B', 'C4H4', 60, 4),
(29, 90, '404 Avenue de la Paix, Ville C', 'C4H5', 70, 4),
(30, 110, '405 Avenue de la Paix, Ville C', 'C4H6', 90, 4),
(31, 130, '406 Avenue de la Paix, Ville D', 'C4H7', 110, 4),
(32, 140, '407 Avenue de la Paix, Ville D', 'C4H8', 120, 4);

-- Insertions pour la chaîne 5
INSERT INTO Hotel (Hotel_ID, Nmb_Chambres, Adresse_H, HNum, Chambre_Dispo, ID_Chaine) VALUES
(33, 100, '500 Avenue de lEspoir Ville A', 'C5H1', 80, 5),
(34, 120, '501 Avenue de lEspoir, Ville A', 'C5H2', 100, 5),
(35, 150, '502 Avenue de lEspoir, Ville B', 'C5H3', 120, 5),
(36, 80, '503 Avenue de lEspoir, Ville B', 'C5H4', 60, 5),
(37, 90, '504 Avenue de lEspoir, Ville C', 'C5H5', 70, 5),
(38, 110, '505 Avenue de lEspoir, Ville C', 'C5H6', 90, 5),
(39, 130, '506 Avenue de lEspoir, Ville D', 'C5H7', 110, 5),
(40, 140, '507 Avenue de lEspoir, Ville D', 'C5H8', 120, 5);
