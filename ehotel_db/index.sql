-- Supposant que la table Reservation a besoin d'être ajustée pour inclure Client_ID
-- Ajout de la colonne Client_ID à la table Reservation
ALTER TABLE Reservation
ADD COLUMN Client_ID INTEGER;

-- Ajout de la contrainte de clé étrangère pour relier Client_ID à la table Client
ALTER TABLE Reservation
ADD CONSTRAINT fk_reservation_client
FOREIGN KEY (Client_ID)
REFERENCES Client(NAS);

-- Création de l'index sur Client_ID pour améliorer les performances des requêtes
CREATE INDEX idx_reservation_client
ON Reservation(Client_ID);

-- Création de l'index sur Hotel_ID dans la table Chambre
-- Cet index améliorerait les performances des requêtes cherchant à obtenir toutes les chambres d'un hôtel spécifique
CREATE INDEX idx_chambre_hotel ON Chambre(Hotel_ID);

-- Création de l'index sur Date dans la table Reservation
-- Cet index est crucial pour optimiser les requêtes qui filtrent les réservations par date
CREATE INDEX idx_reservation_date ON Reservation(Date);





