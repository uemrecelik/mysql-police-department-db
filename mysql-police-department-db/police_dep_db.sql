
CREATE SCHEMA se2222_18070006039;
USE se2222_18070006039;

CREATE TABLE Citizen(
					 id INT AUTO_INCREMENT,
                     firstName VARCHAR(40) NOT NULL,
                     lastName VARCHAR(30) NOT NULL ,
                     birthDate DATE NOT NULL,
                     birthPlace VARCHAR(20) ,
                     job VARCHAR(10) ,
                     gender VARCHAR(6) ,
                     adress VARCHAR(200) NOT NULL,
                     email VARCHAR (30) NOT NULL UNIQUE,
                     PRIMARY KEY(id),
					 CONSTRAINT CK_gender CHECK(gender = 'MALE' or gender = 'FEMALE')
					);
-- Officer table holds police officers information
CREATE TABLE Officer(
					 police_id INT AUTO_INCREMENT UNIQUE,
                     firstname VARCHAR(40) NOT NULL,
                     lastName VARCHAR(30) NOT NULL,
                     stationNo DECIMAL(2) NOT NULL,
                     tenure INT ,
                     birthDate DATE NOT NULL,
                     depName VARCHAR(20) ,
                     deptNo DECIMAL(4) ,
                     officer_acces INT,
                     PRIMARY KEY(police_id)
                     );
          
-- City Table holds City informations
CREATE TABLE City(
				  cityName VARCHAR(20) PRIMARY KEY,
                  cityCode DECIMAL(2) UNIQUE
                  );
                     
-- Departments table holds department information
CREATE TABLE Departments(
						 depName VARCHAR(20) NOT NULL,
                         depNo DECIMAL(4) UNIQUE,
                         dep_acces INT,
                         PRIMARY KEY(DepNo)
                         );

-- Station Table holds police stations information
CREATE TABLE Stations(
					  stationName VARCHAR(20),
                      stationNo DECIMAL(2) UNIQUE,
                      cityName VARCHAR(20),
                      PRIMARY KEY(stationNo)
                      );
                      
-- Vheciles Table holds vhecile informations
CREATE TABLE Vheciles(
					  plate DECIMAL(5) UNIQUE,
                      chassisNo DECIMAL(8) UNIQUE,
                      color VARCHAR(10) ,
                      brand VARCHAR(10),
                      modelName VARCHAR(10),
                      year DECIMAL(4),
                      ownerID INT PRIMARY KEY
                      );
                      
-- Solicitor table holds solicitor's information                       
CREATE TABLE Solicitors(
						solicitor_id DECIMAL(4) NOT NULL UNIQUE,
                        firstName VARCHAR(40) NOT NULL,
                        task VARCHAR(20) NOT NULL,
                        lastName VARCHAR(30) NOT NULL,
                        solicitor_acces INT,
                        PRIMARY KEY(solicitor_id)
                        );
                     
-- Criminal table holds information of the citizens who has crime
-- Penalty Period as a Year
CREATE TABLE Criminal(
					  id INT UNIQUE,
                      firstName VARCHAR(40) NOT NULL,
                      lastName VARCHAR(30) NOT NULL,
                      crime VARCHAR(50),
                      penaltyPeriod INT NOT NULL,
                      PRIMARY KEY(id)
                      );
                      
-- Crime table holds information that is crime by the law
CREATE TABLE Crime(
				   crimeName VARCHAR(30) NOT NULL,
                   crimeLevel INT  NOT NULL,
                   penaltyPeriod INT NOT NULL,
                   PRIMARY KEY(crimeName),
                   CONSTRAINT CK_crimeLevel CHECK (crimeLevel between 1 and 10),
				   CONSTRAINT CK_penaltyPeriod CHECK(penaltyPeriod between 1 and 30)
                   );
                      
                     
					
                     
                     
                     


INSERT INTO Citizen VALUES('10000001','Emre','Çelik','1999-04-28','İzmir',NULL,'MALE','Kazımdirik 361 Tck e1','emre123@gmail.com');
INSERT INTO Citizen VALUES('10000002','Umut','Çelik','1991-03-19','İstanbul',NULL,'MALE','Kazımdirik 227 ASC Sitesi c7','emre12@gmail.com');
INSERT INTO Citizen VALUES('10000003','Ali','Ata','1992-04-11','İstanbul','Police','MALE','Ergene mahallesi 16 sokak Sedef sitesi a8','asdasd@gmail.com');
INSERT INTO Citizen VALUES('10000004','Arzu','Aksu','1987-11-06','İzmir',NULL,'FEMALE','Süvari caddesi 11/2 soakak AKS apartmanı 7','sdfdsfs123@gmail.com');
INSERT INTO Citizen VALUES('10000005','Mert','Karadağ','1973-01-22','Ankara','Dentist','MALE','Evka3 mahallesi 27/8 sokak epik sitesi c17','sdfsd4343@gmail.com');
INSERT INTO Citizen VALUES('10000006','Melis','Budak','1995-09-14','Bursa','Doctor','FEMALE','Kazımdirik mahallesi 278 sokak esc sitesi a1','sdsfsdf4435345@gmail.com');
INSERT INTO Citizen VALUES('10000007','Efe','Sarı','1996-03-28','Ankara','Lawyer','MALE','evka4 mahallesi sasd sitesi a7','342dfg234@gmail.com');
INSERT INTO Citizen VALUES('10000008','Efe','Kaya','1996-12-31','İstanbul',NULL,'MALE','Kazımdirik mahallesi  17 sokak bsg apartmanı 10','1234dsf23@gmail.com');
INSERT INTO Citizen VALUES('10000009','Burak','Çiftçi','1987-05-26','Manisa','Police','MALE','narlıdere mahallesi 14 sokak adsa apartmanı 7','78sdfsd2@gmail.com');
INSERT INTO Citizen VALUES('10000010','Su','Çelik','1994-04-04','Denizli','Police','FEMALE','karşıayka mahallesi 17/8 sokak asdas sitesi  e1','234hfgh76@gmail.com');
INSERT INTO Citizen VALUES('10000011','Gülce','Arıcı','1991-10-18','Balıkesir','Trader','FEMALE','Kazımdirik 180 sokak Tck a8','1235gt56@gmail.com');
INSERT INTO Citizen VALUES('10000012','Cem','Kara','1992-11-27','İzmir','Trader','MALE','Evka3 mahallesi  187  asdas sitesi a19','234fdsbg642@gmail.com');
INSERT INTO Citizen VALUES('10000013','Emre','Savaştar','1969-05-16','İstabul','Police','MALE','Buca mahallesş  361 sokak  asdsasds apartmanı 14','234fsdvt45562@gmail.com');
INSERT INTO Citizen VALUES('10000014','Berk','Mert','1977-08-07','İstanbul',NULL,'MALE','Kazımdirik 277 sokak sadsa sitesi a9','asd2344vs@gmail.com');
INSERT INTO Citizen VALUES('10000015','Zeynep','Koçoğlu','1981-03-16','Antalya','Prosecutor','FEMALE','ata caddesi 19/8 sokak dede apartmanı 17','234fs234f@gmail.com');
INSERT INTO Citizen VALUES('10000016','Tuğberk','Koçoğlu','1997-03-21','Ankara',NULL,'MALE','Evka4 mahallesi 81 sokak asdasd 26','234sfsdb4345cs@gmail.com');
INSERT INTO Citizen VALUES('10000017','Ayşe','Kara','1988-02-21','Manisa','Prosecutor','FEMALE','Kazımdirik 361 Tck a18','234234234dsfsdfsd22@gmail.com');
INSERT INTO Citizen VALUES('10000018','Selim','Yeni','1981-12-08','İstabul','Police','MALE','ata caddesi 88 sokak alibey apartmanı 11','qweqew1123@gmail.com');
INSERT INTO Citizen VALUES('10000019','Ata','Sulak','1993-11-01','İzmir','Doctor','MALE','Evka3 mahallesi 177/8 sokak abcd sitesi  c16','ewrwer2323dfa@gmail.com');
INSERT INTO Citizen VALUES('10000020','Deniz','Ege','1989-02-01','Ankara','Lawyer','MALE','alibey mahallesi 188 sokak efs sitesi  e8','1231sfasdf@gmail.com');
INSERT INTO Citizen VALUES('10000026','Kaan','Paşa','1993-12-16','Antalya','Lawyer','MALE','Kazımdirik mahallesi 361/8 sokak Derin sitesi  d1','kaan_pasa@gmail.com');
INSERT INTO Citizen VALUES('10000035','Logar','Komutan','1960-01-16','Gora',NULL,'MALE','Uzak galaksi Gora gezegeni','komutanlogar@gmail.com');


INSERT INTO Officer VALUES('20001','Ali','Ata','1','6','1992-04-11','Organize Suçlar','01','5');
INSERT INTO Officer VALUES('20009','Burak','Çiftçi','2','11','1987-05-26','Organize Suçlar','01','5');
INSERT INTO Officer VALUES('3003','Su','Çelik','1','4','1994-04-04','Cinayet','03','3');
INSERT INTO Officer VALUES('4087','Emre','Savaştar','15','20','1969-04-11','Narkotik','02','4');
INSERT INTO Officer VALUES('5091','Selim','Yeni','03','6','1981-04-11','Terörle Mücadele','04','5');
INSERT INTO Officer VALUES('5036','Arif','Işık','1','8','1981-04-11','Terörle Mücadele','04','5');
INSERT INTO Officer VALUES('3082','Faruk','Bob','2','4','1981-04-11','Cinayet','04','5');
INSERT INTO Officer VALUES('7036','Ceku','Gora','15','11','1981-04-11','Trafik','04','5');


INSERT INTO City VALUES('İzmir','35');
INSERT INTO City VALUES('İstanbul','34');
INSERT INTO City VALUES('Antalya','07');
INSERT INTO City VALUES('Bursa','16');
INSERT INTO City VALUES('Ankara','06');
INSERT INTO City VALUES('Manisa','45');
INSERT INTO City VALUES('Denizli','20');
INSERT INTO City VALUES('Balıkesir','10');


INSERT INTO Departments VALUES('Organize Suçlar','01','5');
INSERT INTO Departments VALUES('Cinayet','03','3');
INSERT INTO Departments VALUES('Narkotik','02','4');
INSERT INTO Departments VALUES('Terörle Mücadele','04','5');
INSERT INTO Departments VALUES('Trafik','05','2');
INSERT INTO Departments VALUES('Çevik Kuvvet','06','2');



INSERT INTO Stations VALUES('Bornova Merkez','01','İzmir');
INSERT INTO Stations VALUES('Konak İskele','02','İzmir');
INSERT INTO Stations VALUES('Beşiktaş Çarşı','03','İstanbul');
INSERT INTO Stations VALUES('Lara Sahil','04','Antalya');
INSERT INTO Stations VALUES('Akaretler','05','İstanbul');
INSERT INTO Stations VALUES('Gazi','06','Ankara');
INSERT INTO Stations VALUES('Buca','07','İzmir');
INSERT INTO Stations VALUES('Foça Merkez','08','İzmir');


INSERT INTO Vheciles VALUES('1234','12345678','Black','BMW','320','2017','10000001');
INSERT INTO Vheciles VALUES('1235','12378678','White','BMW','516','2011','10000004');
INSERT INTO Vheciles VALUES('1236','12962678','Yellow','Mercedes','e200','2020','10000007');
INSERT INTO Vheciles VALUES('1834','96345678','Black','Fiat','egea','2005','100000013');
INSERT INTO Vheciles VALUES('1434','12995678','Red','Reanult','clio','2018','10000011');
INSERT INTO Vheciles VALUES('1227','7544','Black','Mercedes','c180','2017','10000005');
INSERT INTO Vheciles VALUES('8234','12343678','Blue','Ferrari','488','2021','10000008');
INSERT INTO Vheciles VALUES('7434','22345614','Red','BMW','320','2006','10000006');



INSERT INTO Solicitors VALUES('4412','Efe','Sarı','Lawyer','5');
INSERT INTO Solicitors VALUES('5511','Zeynep','Koçoğlu','Prosecutor','9');
INSERT INTO Solicitors VALUES('5512','Ayşe','Kara','Prosecutor','9');
INSERT INTO Solicitors VALUES('4413','Kaan','Paşa','Lawyer','5');
INSERT INTO Solicitors VALUES('4414','Deniz','Ege','Lawyer','5');


INSERT INTO Criminal VALUES('10000002','Umut','Çelik','Yaralama','5');
INSERT INTO Criminal VALUES('10000008','Efe','Kaya','Cinayet','25');
INSERT INTO Criminal VALUES('10000005','Mert','Karadağ','Uyuşturucu','10');
INSERT INTO Criminal VALUES('10000011','Gülce','Arıcı','Evrakta Sahtecilik','15');
INSERT INTO Criminal VALUES('10000012','Cem','Kara','Çete Liderliği - Cinayet','30');
INSERT INTO Criminal VALUES('10000022','Seda','Salim','Trafik İhlali','1');
INSERT INTO Criminal VALUES('10000023','Salih','Can','Sahtecilik','15');
INSERT INTO Criminal VALUES('10000024','Kaan','Kılıç','Yaralama','5');
INSERT INTO Criminal VALUES('10000025','Doruk','Deniz','Cinayet','25');



INSERT INTO Crime VALUES('Yaralama','2','5');
INSERT INTO Crime VALUES('Cinayet','8','25');
INSERT INTO Crime VALUES('Uyuşturucu','3','10');
INSERT INTO Crime VALUES('Terör','10','30');
INSERT INTO Crime VALUES('Sahtecilik','6','15');
INSERT INTO Crime VALUES('Organize Suç','9','30');
INSERT INTO Crime VALUES('Trafik İhlali','1','1');
INSERT INTO Crime VALUES('Hırsızlık','4','12');





-- Finds name, surname and id information of citizens in the Criminal table
SELECT Citizen.id,Citizen.firstName,Citizen.lastName FROM Citizen JOIN Criminal ON Criminal.id = Citizen.id;
-- Finds average tenure for each departments
SELECT depName AS DEPARTMENS ,avg(tenure) AS AVERAGE  FROM Officer GROUP BY depName;
-- Updates e-mail information of citizen which has id 10000020
UPDATE Citizen SET email ='uptdatedmail@gmail.com' WHERE id = '10000020';
-- Delets all information about citizen 10000035
DELETE FROM Citizen WHERE id ='10000035';
-- Finds license plates of older than average vehicles for the description of 'it was an old car'
SELECT plate FROM Vheciles WHERE year< (SELECT avg(year) FROM Vheciles );








