-- Supposant que la table Reservation a besoin d'être ajustée pour inclure Client_ID
ALTER TABLE Reservation
ADD COLUMN Client_ID INTEGER,
ADD FOREIGN KEY (Client_ID) REFERENCES Client(NAS);
-- Création de l'index sur les réservations par client
CREATE INDEX idx_reservation_client ON Reservation(Client_ID);
