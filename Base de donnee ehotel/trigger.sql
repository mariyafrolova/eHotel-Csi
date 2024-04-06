-- Création d'un trigger pour mettre à jour le nombre de chambres disponibles après une réservation
CREATE OR REPLACE FUNCTION update_chambre_dispo() RETURNS TRIGGER AS $$
BEGIN
    UPDATE Hotel SET Chambre_Dispo = Chambre_Dispo - 1 WHERE Hotel_ID = NEW.Hotel_ID;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER apres_reservation
AFTER INSERT ON Reservation
FOR EACH ROW EXECUTE FUNCTION update_chambre_dispo();


--creation d'un trigger

CREATE OR REPLACE FUNCTION increase_chambre_dispo()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Hotel
    SET Chambre_Dispo = Chambre_Dispo + 1
    WHERE Hotel_ID = OLD.Hotel_ID;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER after_reservation_delete
AFTER DELETE ON Reservation
FOR EACH ROW
EXECUTE FUNCTION increase_chambre_dispo();
