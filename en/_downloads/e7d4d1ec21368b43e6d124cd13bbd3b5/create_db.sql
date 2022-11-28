CREATE DATABASE esercizio_4_14;

CREATE TABLE AEROPORTO (
    Citta   varchar(255),
    Nazione varchar(255) NOT NULL,
    NumPiste INTEGER UNSIGNED,
    PRIMARY KEY (Citta)
);


CREATE TABLE AEREO (
    TipoAereo        varchar(255),
    NumPasseggeri INTEGER UNSIGNED NOT NULL,
    QtaMerci    INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (TipoAereo)
);


CREATE TABLE VOLO (
    IdVolo      varchar(255),
    GiornoSett  INTEGER UNSIGNED NOT NULL,
    CittaPart   varchar(255)  NOT NULL,
    OraPart     TIME NOT NULL,
    CittaArr    varchar(255)  NOT NULL,
    OraArr      TIME NOT NULL,
    TipoAereo   varchar(255),
    PRIMARY KEY (IdVolo, GiornoSett),
    FOREIGN KEY (CittaPart) REFERENCES AEROPORTO(Citta),
    FOREIGN KEY (CittaArr) REFERENCES AEROPORTO(Citta)
);



INSERT INTO AEROPORTO VALUES
('Torino', 'Italia', 10),
('Monaco', 'Germania', 10),
('Parigi', 'Francia', NULL),
('Lione', 'Francia', 15),
('Bologna', 'Italia', NULL),
('Napoli', 'Italia',7),
('Roma', 'Italia', 20);


INSERT INTO AEREO VALUES
('A', 10, 10),
('B', 10, 10),
('C', 10, 10),
('D', 10, 10);

INSERT INTO VOLO VALUES
('AZ274', 1, 'Roma', '11:12:00' , 'Torino', '13:12:00', 'A'),
('AZ274', 2, 'Torino', '14:12:00' , 'Parigi', '17:12:00', 'A'),
('AZ274', 3, 'Torino', '14:12:00' , 'Monaco', '17:12:00', 'A'),
('AZ274', 4, 'Torino', '14:12:00' , 'Roma',   '17:12:00', 'E'),
('AZ274', 5, 'Parigi', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('BH354', 5, 'Monaco', '14:12:00' , 'Bologna',   '17:12:00', 'C'),
('BH354', 6, 'Roma', '14:12:00' , 'Bologna',   '17:12:00', 'D'),
('BH354', 3, 'Napoli', '14:12:00' , 'Bologna',   '17:12:00', 'D'),
('BH354', 4, 'Napoli', '14:12:00' , 'Parigi',   '17:12:00', 'D'),
('ZJ980', 4, 'Napoli', '14:12:00' , 'Bologna',   '17:12:00', 'D'),
('XYZ01', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ02', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ03', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ04', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ05', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ06', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ07', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ08', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ09', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ10', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ11', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ12', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ13', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ14', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ15', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ16', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ17', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ18', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ19', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ20', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E'),
('XYZ21', 5, 'Lione', '14:12:00' , 'Bologna',   '17:12:00', 'E');



