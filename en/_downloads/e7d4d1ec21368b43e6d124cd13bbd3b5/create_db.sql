CREATE DATABASE esercizio_4_14;

DROP TABLE VOLO; DROP TABLE AEROPORTO; DROP TABLE AEREO;

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
('Roma', 'Italia', 20),
('Milano', 'Italia', 20);


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
('MI980', 4, 'Milano', '14:12:00' , 'Parigi',   '17:12:00', 'D'),
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





################################# 
# Q1
#################################

select Citta
from AEROPORTO
where NumPiste is NULL;


#################################
# Q2
################################

select A1.Nazione as NazioneArr , A2.Nazione as NazionePart
from AEROPORTO as A1 join VOLO on A1.Citta = CittaArr
join AEROPORTO as A2 on CittaPart = A2.Citta
where IdVolo='AZ274';

#################################
# Q3
################################

select TipoAereo
from VOLO
where CittaPart = 'Torino';

####################################
# Q4
###################################

select VOLO.TipoAereo, NumPasseggeri
from VOLO 
left join AEREO on VOLO.TipoAereo=AEREO.TipoAereo
where CittaPart = 'Torino'

select VOLO.TipoAereo, NumPasseggeri
from VOLO 
join AEREO on VOLO.TipoAereo=AEREO.TipoAereo
where CittaPart = 'Torino'


####################################
# Q5
###################################

select distinct CittaPart
from AEROPORTO as A1 join VOLO on CittaPart=A1.Citta
join AEROPORTO as A2 on CittaArr=A2.Citta
where A1.Nazione <> A2.Nazione



####################################
# Q6
###################################

select CittaPart
from VOLO
where CittaArr = 'Bologna'
order by CittaPart


####################################
# Q7
###################################

select count(*)
from VOLO
join AEROPORTO on CittaArr=Citta
where Nazione<>'Italia' and CittaPart='Napoli' and GiornoSett = 4

######################################
# Q8 
######################################

select count(*), CittaPart
from AEROPORTO as A1 join VOLO on A1.Citta=CittaPart
join AEROPORTO as A2 on CittaArr=A2.Citta
where A1.Nazione='Italia' and A2.Nazione <> 'Italia'
group by CittaPart


##############

select count(*), 1 as Dummy
from AEROPORTO as A1 join VOLO on A1.Citta=CittaPart
join AEROPORTO as A2 on CittaArr=A2.Citta
where A1.Nazione='Italia' and A2.Nazione <> 'Italia'
group by Dummy;

##############


select count from (
	select count(*) as count, 1 as Dummy
	from AEROPORTO as A1 join VOLO on A1.Citta=CittaPart
	join AEROPORTO as A2 on CittaArr=A2.Citta
	where A1.Nazione='Italia' and A2.Nazione <> 'Italia'
	group by Dummy
) AS T;


######################
# Q9
######################


select A1.Citta, count(*)
from AEROPORTO as A1 
join VOLO on A1.Citta=CittaPart
join AEROPORTO as A2 on A2.Citta=CittaArr
where A1.Nazione = 'Francia' and A2.Nazione = 'Italia'
group by A1.Citta

###################################

select A1.Citta, count(*)
from AEROPORTO as A1 
join VOLO on A1.Citta=CittaPart
join AEROPORTO as A2 on A2.Citta=CittaArr
where A1.Nazione = 'Francia' and A2.Nazione = 'Italia'
group by A1.Citta
having count(A1.Citta) > 20


##############################
# Q10
###############################


select distinct CittaPart
from VOLO,AEROPORTO where CittaPart=Citta and Nazione='Italia'
except
select CittaPart
from AEROPORTO as A1 join VOLO on A1.Citta=CittaPart
join AEROPORTO as A2 on A2.Citta=CittaArr
where A1.Nazione = 'Italia' and A2.Nazione <> 'Italia'


############################
# Q11
############################

select distinct CittaPart
from VOLO,AEROPORTO where CittaPart=Citta
and Nazione='Italia' and CittaPart not in
	(select CittaPart
	 from AEROPORTO as A1 join VOLO on A1.Citta=CittaPart
	 join AEROPORTO as A2 on A2.Citta=CittaArr
	 where A1.Nazione = 'Italia' and A2.Nazione <> 'Italia')

#######################
# Q12
######################

select distinct CittaPart 
from VOLO
join AEROPORTO as A1 on CittaPart=A1.Citta
where Nazione='Italia' and not exists
  (select * from VOLO join AEROPORTO as A2 on 
	A2.Citta=CittaArr
	where A1.Citta=CittaPart and A2.Nazione <> 'Italia' )

#######################
# Q13
######################

select CittaPart, IF(A2.Nazione <> 'Italia' ) as Dummy,
from AEROPORTO as A1 
join VOLO on A1.Citta=CittaPart 
join AEROPORTO as A2 on A2.Citta=CittaArr 
where A1.Nazione='Italia' 
group by CittaPart 
having sum(distinct A2.Nazione) = 1;



select CittaPart
from AEROPORTO as A1 join VOLO on
A1.Citta=CittaPart left join AEROPORTO as A2 on
(CittaArr=A2.Citta and A2.Nazione='Italia')
where A1.Nazione='Italia'
group by CittaPart
having count (distinct A2.Nazione)= 1 )

select CittaPart 
from AEROPORTO as A1 
join VOLO on A1.Citta=CittaPart 
left join AEROPORTO as A2 
on (CittaArr=A2.Citta and A2.Nazione<>'Italia') 
where A1.Nazione='Italia' 
group by CittaPart 
having count(A2.Nazione) = 0;