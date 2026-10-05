-- ----------------------------
-- Table structure for CUSTOMER
-- ----------------------------

CREATE TABLE CUSTOMER (
    Cust_ID SERIAL PRIMARY KEY,
    Cust_phone VARCHAR(15) NOT NULL UNIQUE,
    Cust_landline VARCHAR(15) NOT NULL,
    Cust_first_name VARCHAR(30) NOT NULL,
    Cust_middle_name VARCHAR(30),
    Cust_last_name VARCHAR(30) NOT NULL,
    Cust_email VARCHAR(150) NOT NULL UNIQUE,
    Cust_address_line_1 VARCHAR(20) NOT NULL,
    Cust_address_line_2 VARCHAR(20),
    Cust_city VARCHAR(25) NOT NULL,
    Cust_postcode VARCHAR(8) NOT NULL
);

-- ----------------------------
-- record for CUSTOMER
-- ----------------------------

INSERT INTO CUSTOMER (Cust_ID, Cust_phone, Cust_landline, Cust_first_name, Cust_middle_name, Cust_last_name, Cust_email, 
Cust_address_line_1, Cust_address_line_2, Cust_city, Cust_postcode)
VALUES 
(1, '545-134-1871', '623-452-8744', 'Gregor',NULL,'Samsa', 'cburman0@foxnews.com', '364 Arkansas Lane', 'PO Box 77346', 'Puget-sur-Argens', 'SA70 7SH'),
(2, '658-123-7559', '204-723-5375', 'Ches', 'André', 'Surmeir', 'csurmeir1@dmoz.org', '2 Tomscot Avenue', '2nd Floor', 'Kawasaki', 'HU18 1UA'),
(3, '438-637-3174', '679-193-0307', 'Axe', NULL, 'Eaken', 'aeaken2@51.la', '644 Morning Park', 'Suite 28', 'Pubal', 'TF8 7JB'),
(4, '712-490-8716', '564-879-9274', 'Haley', NULL, 'Sparey', 'hsparey3@samsung.com', '500 Bultman Plaza', NULL, 'Ettal', 'LE87 4AB'),
(5, '624-885-9292', '434-497-3177', 'Horus','joe','Lupercal', 'sbellenger4@discuz.net', '1988 Dahle Crossing', NULL, 'Babakanbungur', 'CF11 6SW'),
(6, '728-880-1997', '280-567-7726', 'Emilio', NULL, 'Orcott', 'eorcott5@gmpg.org', '98418 Gale Pass', NULL, 'Mubende', 'RG4 6RR'),
(7, '306-610-6297', '173-793-3877', 'Darcy', 'Lucrèce', 'Peppard', 'dpeppard6@webnode.com', '77787 Marquette road', NULL, 'Maiduguri', 'PH26 9AG'),
(8, '773-894-7838', '501-192-6749', 'Sonic','Maurice','Hedgehog', 'jairy7@pagesperso-orange.fr', '306 Anhalt Way', 'PO Box 76781', 'Sepanjang', 'UB1 2RP'),
(9, '701-666-9883', '758-903-3260', 'zoey',NULL,'Rigby', 'bsemour8@amazon.co.uk', '9 Hermina Point', 'PO Box 99382', 'Kuangyuan', 'NG14 5EZ'),
(10, '342-222-9740', '475-922-0532', 'Johnathan',NULL,'Grey', 'emccathiee@ifeng.com', '2445 Esch Road', 'PO Box 15645', 'Otorohanga', 'AL8 7QB');

-- ----------------------------
-- Table structure for STAFF
-- ----------------------------

CREATE TABLE STAFF (
    Staff_ID SERIAL PRIMARY KEY,
    Staff_phone VARCHAR(15) NOT NULL UNIQUE,
    Staff_landline VARCHAR(15) NOT NULL,
    Staff_first_name VARCHAR(30) NOT NULL,
    Staff_middle_name VARCHAR(30),
    Staff_last_name VARCHAR(30) NOT NULL,
    Staff_email VARCHAR(150) NOT NULL UNIQUE,
    Staff_address_line_1 VARCHAR(20) NOT NULL,
    Staff_address_line_2 VARCHAR(20),
    Staff_city VARCHAR(15) NOT NULL,
    Staff_postcode VARCHAR(8) NOT NULL,
    Staff_role VARCHAR(30) NOT NULL
);

-- ----------------------------
-- record for STAFF
-- ----------------------------

INSERT INTO STAFF (Staff_ID, Staff_phone, Staff_landline, Staff_first_name, Staff_middle_name, Staff_last_name, Staff_email, Staff_address_line_1, Staff_address_line_2, Staff_city, Staff_postcode, Staff_role)
VALUES 
(1, '512-417-3135', '921-230-0280', 'Sauncho', 'Görel', 'Muehle', 'smuehle0@wp.com', '4 Kim Junction', 'PO Box 85679', 'Duifang', 'TW5 9PH','electrician'), --get actual names for these
(2, '738-120-8712', '612-622-4631', 'Dehlia', 'Léonie', 'Trunby', 'dtrunby1@topsy.com', '17 Jana Road', 'Apt 1930', 'Nsukka', 'LA10 5AD','technician'),
(3, '164-792-0276', '421-936-8508', 'Correy', 'Eloïse', 'Bubbins', 'cbubbins2@1688.com', '154 Riverside Trail', NULL, 'Si That', 'SE5 8ET','mechanic'),
(4, '197-319-8685', '874-926-8820', 'Jackquelin', 'Kuí', 'Caliburn', 'jepelett3@adobe.com', '8 Paget Junction', NULL, 'Torzhok', 'LS16 9FD','mechanic'),
(5, '353-587-1822', '572-849-8031', 'Bobine', NULL, 'Garaway', 'bgaraway4@abc.net.au', '00 Drewry Hill', NULL, 'Wangshi', 'TS5 6PS','paint technician'),
(6, '737-479-0893', '984-575-1116', 'Cassy', 'Clémentine', 'Buckel', 'cbuckel5@ning.com', '4 Scofield Plaza', NULL, 'Podbrdo', 'RM14 1QS','head body work specialist'),
(7, '919-453-7757', '340-174-7680', 'Dorene', NULL, 'Goodisson', 'dgoodisson6@tumblr.com', '994 Farwell Park', NULL, 'Kan’onjichō', 'PA38 4BA','customer service manager'),
(8, '601-933-4942', '841-831-5820', 'Guss', 'Kù', 'Hamer', 'ghamer7@google.ca', '7964 Johnson Lane', 'PO Box 42840', 'Marjayoûn', 'EN2 8PZ','head technician');

-- ----------------------------
-- Table structure for DEPARTMENT
-- ----------------------------

CREATE TABLE DEPARTMENT (
    Dep_ID SERIAL PRIMARY KEY,
    Dep_name VARCHAR(30) NOT NULL,
    Dep_staff_size INT NOT NULL CHECK (Dep_staff_size >= 0),
    Dep_serv_size INT NOT NULL CHECK (Dep_serv_size >= 0)
);

-- ----------------------------
-- record for DEPARTMENT
-- ----------------------------

INSERT INTO DEPARTMENT (Dep_ID, Dep_name, Dep_staff_size, Dep_serv_size)
VALUES
(1,'engine and transmission',3,6), -- Correy, Guss, Jackquelin
(2,'electrical systems',2,3), -- Sauncho , Guss, 
(3,'bodywork and painting',2,2), -- Cassy , Bobine
(4,'general maintenance',4,5), -- Jackquelin , Guss, Dehlia, Correy
(5,'customer service',1,0); -- Dorene

-- ----------------------------
-- Table structure for STAFF_DEPARTMENT
-- ----------------------------

CREATE TABLE STAFF_DEPARTMENT (
    Dep_ID INT NOT NULL,
    Staff_ID INT NOT NULL,
    staff_dep_count INT NOT NULL,
    PRIMARY KEY (Dep_ID, Staff_ID),
    FOREIGN KEY (Dep_ID) REFERENCES DEPARTMENT (Dep_ID),
    FOREIGN KEY (Staff_ID) REFERENCES STAFF (Staff_ID)
);

-- ----------------------------
-- record for STAFF_DEPARTMENT
-- ----------------------------

INSERT INTO STAFF_DEPARTMENT (Dep_ID, Staff_ID, staff_dep_count)
VALUES 
(1,3,1),
(1,8,2), 
(1,4,3),
(2,1,1),
(2,8,2),
(3,5,1),
(3,6,2),
(4,4,1),
(4,8,2),
(4,2,3),
(4,3,4),
(5,7,1);

-- ----------------------------
-- Table structure for PARTS
-- ----------------------------

CREATE TABLE PARTS (
    parts_ID SERIAL  PRIMARY KEY,
    parts_stock_quant INT NOT NULL CHECK(parts_stock_quant >= 0),
    parts_manufacturer VARCHAR(50) NOT NULL ,
    parts_availability BOOLEAN NOT NULL,
    parts_type VARCHAR(30) NOT NULL,
    parts_name VARCHAR(30) NOT NULL
);

-- ----------------------------
-- record for PARTS
-- ----------------------------

INSERT INTO PARTS (parts_ID, parts_stock_quant, parts_manufacturer, parts_availability, parts_type, parts_name)
VALUES 
(1,6,'Bosch',TRUE,'engine','engine block'),
(2,22,'Bosch',TRUE,'engine','piston'),
(3,13,'Denso',FALSE,'engine','crankshaft'),
(4,56,'NGK',TRUE,'engine','valves'),
(5,9,'BorgWarner ',FALSE,'electrical','battery'),
(6,4,'BorgWarner ',FALSE,'electrical','alternator'),
(7,16,'Aisin Seiki',TRUE,'electrical','spark plugs'),
(8,2,'Brembo ',TRUE,'Transmission & Drivetrain','transmission'),
(9,6,'Brembo ',FALSE,'Transmission & Drivetrain','clutch'),
(10,5,'Bosch ',FALSE,'Transmission & Drivetrain','driveshaft'),
(11,23,'ATE ',TRUE,'Transmission & Drivetrain','axles'),
(12,1,'Akebono ',TRUE,'Transmission & Drivetrain','differential'),
(13,32,'KYB ',TRUE,'Suspension & Steering','shock absorber'),
(14,8,'KYB ',FALSE,'Suspension & Steering','struts'),
(15,16,'KYB ',TRUE,'Suspension & Steering','steering rack'),
(16,32,'Bosal ',TRUE,'Braking System','brake pads'),
(17,51,'Walker Exhaust',FALSE,'Braking System','brake lines'),
(18,32,'Bosal ',FALSE,'Exhaust System','catalytic converter'),
(19,22,'Bosal ',FALSE,'Exhaust System','muffler'),
(20,19,'Valeo ',TRUE,'Cooling System','radiator'),
(21,3,'Valeo ',FALSE,'Cooling System','thermostat'),
(22,23,'Michelin',TRUE,'Tires','Tire');

-- ----------------------------
-- Table structure for CARS
-- ----------------------------

CREATE TABLE CARS (
    Car_ID SERIAL  PRIMARY KEY,
    Cust_ID INT NOT NULL,
    Car_details VARCHAR(250) NOT NULL,
    Car_size VARCHAR(10) NOT NULL,
    Car_manufacturer VARCHAR(50) NOT NULL,
    Car_licence_plate VARCHAR(7) NOT NULL UNIQUE,
    Car_VIN VARCHAR(17) NOT NULL UNIQUE,
    FOREIGN KEY (Cust_ID) REFERENCES CUSTOMER (Cust_ID)
);

-- ----------------------------
-- record for CARS
-- ----------------------------

INSERT INTO CARS (Car_ID, Cust_ID, Car_details, Car_size, Car_manufacturer, Car_licence_plate, Car_VIN)
VALUES -- 23 cars
(1,1,'green, great condition','truck-med','Bently','OH LAWD', 'G3NCU0043A6JRJTY9'),
(2,1,'purple, decent condition','car-small','jaguar','W8 WHAT', 'VUWO3LC1T3VX81QHI'),
(3,2,'yellow, poor condition','car-small','Aston Martin','BEYOND', '7VGN8Z1GFF0L4UK69'),
(4,3,'grey, poor condition','car-med','mazda','I WALK', '35EPLGDJDOZY1GOKW'),
(5,3,'white, decent condition','truck-med','jaguar','MISTAKE', 'E160CXBTLG2T4SRQ6'),
(6,4,'orange, poor condition','car-mini','Mini','CARDIEM', '948NFPF3NER6ZGAAL'),
(7,4,'dark blue, decent condition','car-small','tesla','NIKOLA', 'JHCAE7783XL5NVCE9'),
(8,4,'white, great condition','truck-med','Toyota','8B8B8B8', 'GN4GJEYZBISCMTAFZ'),
(9,5,'purple, great condition','truck-med','Toyota','IDIOT', 'ML1EKZZ0U0OHHESZH'),
(10,6,'blue, decent condition','car-small','honda','MCFLY', 'W6S9R4UF46YKLF3T3'),
(11,6,'white, decent condition','car-med','Cupra','ITIS', 'EN1TZYKI8KYSG08HY'),
(12,7,'grey, great condition','car-large','honda','HONDUH', 'PXYPMG0AQ4896I1GL'),
(13,8,'orange, poor condition','car-mini','Mini','MARJANY', 'PYWRJ14UCM9TCD1M4'),
(14,9,'grey, decent condition','car-small','mazda','1V1RUST', 'DMSIJHTC7G4VEQW26'),
(15,10,'pink, amazing condition','car-med','mazda','JEF4SON', 'EOOMNTEVKJGB1CEZY');

-- ----------------------------
-- Table structure for SERVICES
-- ----------------------------

CREATE TABLE SERVICES (
    Serv_ID SERIAL PRIMARY KEY,
    Dep_ID INT NOT NULL,
    Serv_name VARCHAR(30),
    Serv_department VARCHAR(30),
    Serv_Time_est DECIMAL NOT NULL CHECK (Serv_Time_est >= 0),
    Serv_cost DECIMAL NOT NULL CHECK (Serv_cost >= 0),
    FOREIGN KEY (Dep_ID) REFERENCES DEPARTMENT (Dep_ID)
);

-- ----------------------------
-- record for SERVICES
-- ----------------------------

INSERT INTO SERVICES (Serv_ID, Dep_ID, Serv_name, Serv_department, Serv_Time_est, Serv_cost)
VALUES 
(1,4,'oil change','general maintenance',2,500),
(2,4,'fluid check','general maintenance',0.5,600),
(3,4,'tire service','general maintenance',1,200),
(4,4,'brake inspection','general maintenance',2,351),
(5,2,'battery testing','electrical systems',1,5),
(6,2,'lights testing','electrical systems',0.5,15),
(7,1,'engine diagnostic','engine and transmission',1.5,130),
(8,1,'engine tune-up','engine and transmission',2.5,5600),
(9,1,'belt-chain replacement','engine and transmission',3,20),
(10,1,'fuel system repair','engine and transmission',5,920),
(11,1,'transmission repair','engine and transmission',3,46),
(12,1,'radiator repair','engine and transmission',0.7,0.90),
(13,2,'electrical repair','electrical systems',3,23),
(14,3,'paintwork','bodywork and painting',2,123),
(15,4,'exhaust repair','general maintenance',3,423),
(16,3,'spinning rims','bodywork and painting',1,4);

-- ----------------------------
-- Table structure for APPOINTMENT
-- ----------------------------

CREATE TABLE APPOINTMENT (
    Appo_ID SERIAL PRIMARY KEY,
    Cust_ID INT NOT NULL,
    Staff_ID INT NOT NULL,
    Car_ID INT NOT NULL,
    Serv_ID INT NOT NULL,
    Appo_time TIME NOT NULL,
    Appo_date DATE NOT NULL,
    Appo_Status VARCHAR(9) NOT NULL,
    Appo_repair_details VARCHAR(250),
    FOREIGN KEY (Cust_ID) REFERENCES CUSTOMER (Cust_ID),
    FOREIGN KEY (Staff_ID) REFERENCES STAFF (Staff_ID),
    FOREIGN KEY (Car_ID) REFERENCES CARS (Car_ID),
    FOREIGN KEY (Serv_ID) REFERENCES SERVICES (Serv_ID)
);

-- ----------------------------
-- record for APPOINTMENT
-- ----------------------------

INSERT INTO APPOINTMENT (Appo_ID, Cust_ID, Staff_ID,Car_ID ,Serv_ID,Appo_time, Appo_date, Appo_Status, Appo_repair_details)
VALUES 
(1,1,4,1,1,'13:00','01-01-2024','completed','details'), -- 4
(2,1,2,1,15,'09:30','01-12-2024','aborted','details'), -- 4
(3,1,5,2,16,'08:00','02-07-2024','completed','details'), -- 3
(4,2,3,3,7,'14:30','02-22-2024','completed','details'), -- 1
(5,3,8,4,8,'18:00','03-05-2024','completed','details'), -- 1
(6,3,1,4,5,'15:30','04-02-2024','aborted','details'), -- 2
(7,3,3,5,3,'09:30','04-08-2024','completed','details'), -- 4
(8,3,8,5,13,'11:00','04-12-2024','completed','details'), -- 2
(9,3,6,5,16,'13:30','04-22-2024','completed','details'), -- 3
(10,4,8,6,3,'14:00','05-08-2024','completed','details'), -- 4
(11,4,8,7,13,'15:30','05-12-2024','on hold','details'), -- 2
(12,4,5,8,6,'13:00','05-18-2024','completed','details'), -- 3
(13,4,6,8,6,'12:30','05-27-2024','completed','details'), -- 3
(14,5,8,9,3,'15:00','06-12-2024','completed','details'), -- 4
(15,5,4,9,11,'15:30','06-18-2024','completed','details'), -- 1
(16,6,6,10,16,'17:00','07-09-2024','completed','details'), -- 3
(17,6,3,10,3,'18:30','07-16-2024','aborted','details'), -- 4
(18,6,3,10,10,'13:00','08-12-2024','completed','details'), -- 1
(19,6,2,11,3,'13:05','08-17-2024','completed','details'), -- 4
(20,7,2,12,9,'12:00','08-25-2024','completed','details'), -- 1
(21,7,5,12,16,'09:30','09-01-2024','completed','details'), -- 3
(22,8,8,13,7,'08:30','09-04-2024','completed','details'), -- 1
(23,8,3,13,3,'22:00','11-09-2024','on hold','details'), -- 4
(24,8,1,13,5,'21:00','11-16-2024','completed','details'), -- 2
(25,9,5,14,16,'12:30','11-22-2024','completed','details'), -- 3
(26,9,3,14,2,'19:30','12-01-2024','completed','details'), -- 4
(27,9,8,14,3,'18:00','12-19-2024','completed','details'), -- 4
(28,10,8,15,15,'12:30','12-24-2024','on hold','details'), -- 4
(29,10,6,15,16,'13:30','01-01-2025','completed','details'), -- 3
(30,1,5,1,14,'16:00','01-02-2025','completed','details'), -- 3
(31,1,5,2,16,'22:30','02-09-2025','active','details'); -- 3

-- ----------------------------
-- Table structure for TOOLS
-- ----------------------------

CREATE TABLE TOOLS(
    Tool_ID SERIAL PRIMARY KEY,
    Tool_quant INT NOT NULL CHECK(Tool_quant >= 0),
    Tool_manufacturer VARCHAR(50) NOT NULL ,
    Tool_name VARCHAR(30) NOT NULL
);

-- ----------------------------
-- record for TOOLS
-- ----------------------------

INSERT INTO TOOLS (Tool_ID,Tool_quant,Tool_manufacturer,Tool_name)
VALUES 
(1,14,'Mac Tools','wrentch'),
(2,32,'Mac Tools','ratchet'),
(3,3,'Mac Tools','screwdriver'),
(4,9,'Arcan','plier'),
(5,8,'Arcan','Allen key'),
(6,4,'Mac Tools','multimeter'),
(7,2,'Powerbuilt','compression tester'),
(8,2,'Mac Tools','battery tester'),
(9,1,'Powerbuilt','car jack'),
(10,5,'Wiha','creeper'),
(11,9,'Mac Tools','oil drain wrentch'),
(12,19,'Actron','fluid pump'),
(13,32,'Bosch','ball joint seperator'),
(14,17,'Mac Tools','lug wrentch'),
(15,11,'Wiha','tire inflator'),
(16,2,'Mac Tools','feeler gauge'),
(17,1,'ESCO','pulley'),
(18,31,'Wiha','injector puller'),
(19,2,'OEM Tools','torque wrentch'),
(20,4,'OEM Tools','wheel alligner'),
(21,1,'Bosch','spring compressor'),
(22,0,'Bosch ','brake bleeder');

-- ----------------------------
-- Table structure for TOOLS_USED
-- ----------------------------

CREATE TABLE TOOLS_USED (
    Appo_ID INT NOT NULL,
    Tool_ID INT NOT NULL,
    Quantity INT NOT NULL CHECK(Quantity > 0),
    Date_used DATE NOT NULL,
    PRIMARY KEY (Tool_ID, Appo_ID),
    FOREIGN KEY (Appo_ID) REFERENCES APPOINTMENT (Appo_ID),
    FOREIGN KEY (Tool_ID) REFERENCES TOOLS (Tool_ID)
);

-- ----------------------------
-- record for TOOLS_USED
-- ----------------------------

INSERT INTO TOOLS_USED (Appo_ID, Tool_ID, Quantity, Date_used)
VALUES 
(1,1,1,'01-01-2024'),
(2,1,1,'01-12-2024'),
(3,2,2,'02-7-2024'),
(4,22,1,'02-22-2024'),
(5,8,2,'03-05-2024'),
(6,7,3,'04-02-2024'),
(7,22,1,'04-08-2024'),
(8,9,1,'04-12-2024'),
(9,22,1,'04-22-2024'),
(10,1,2,'05-08-2024'),
(11,2,2,'05-12-2024'),
(12,2,1,'05-18-2024'),
(13,22,1,'05-27-2024'),
(14,7,3,'06-12-2024'),
(15,3,2,'06-18-2024'),
(16,3,2,'07-09-2024'),
(17,4,3,'07-16-2024'),
(18,3,3,'08-12-2024'),
(19,3,2,'08-17-2024'),
(20,7,1,'08-25-2024'),
(21,6,1,'09-01-2024'),
(22,9,1,'09-04-2024'),
(23,22,2,'11-09-2024'),
(24,22,3,'11-16-2024'),
(25,5,1,'11-22-2024'),
(26,9,1,'12-01-2024'),
(27,22,2,'12-19-2024'),
(28,13,1,'12-19-2024'),
(29,7,2,'01-01-2025'),
(30,15,2,'01-02-2025'),
(31,22,3,'02-09-2025'),
(1,3,1,'01-01-2024'),
(2,22,1,'01-12-2024'),
(3,22,1,'02-07-2024'),
(4,11,1,'02-22-2024'),
(5,12,2,'03-05-2024'),
(6,9,2,'04-02-2024'),
(8,14,1,'04-08-2024'),
(9,11,1,'04-12-2024'),
(10,14,3,'04-22-2024'),
(11,7,1,'05-08-2024');

-- ----------------------------
-- Table structure for SERVICE_APPOINTMENT
-- ----------------------------

CREATE TABLE SERVICE_APPOINTMENT (
    Appo_ID INT NOT NULL,
    Serv_ID INT NOT NULL,
    Rep_detail TEXT NOT NULL,
    Rep_issues TEXT,
    Rep_date_issued DATE NOT NULL,
    PRIMARY KEY(Appo_ID,Serv_ID),
    FOREIGN KEY (Appo_ID) REFERENCES APPOINTMENT (Appo_ID),
    FOREIGN KEY (Serv_ID) REFERENCES SERVICES (Serv_ID)
);

-- ----------------------------
-- record for SERVICE_APPOINTMENT
-- ----------------------------

INSERT INTO SERVICE_APPOINTMENT (Appo_ID, Serv_ID, Rep_detail, Rep_issues, Rep_date_issued)
VALUES 
(1,1,'love oil','nothing to note','01-02-2024'),
(2,15,'exhausting...','black lung from exhaust fumes','01-14-2024'),
(3,16,'rims spun at lackluster speed','nothing to note','02-09-2024'),
(4,7,'none to note','nothing to note','02-22-2024'),
(5,8,'none to note','nothing to note','03-06-2024'),
(6,5,'none to note','we ran out of batteries','04-03-2024'),
(7,3,'none to note','nothing to note','04-09-2024'),
(8,13,'i never want to work on this car again','nothing to note','04-14-2024'),
(9,16,'none to note','nothing to note','04-24-2024'),
(10,3,'none to note','nothing to note','05-11-2024'),
(11,13,'repair succesfull though tiring','wires had no insulation','05-15-2024'),
(12,6,'none to note','nothing to note','05-18-2024'),
(13,6,'none to note','no bulbs','05-27-2024'),
(14,3,'none to note','nothing to note','06-13-2024'),
(15,11,'car succesfully transitioned','nothing to note','06-19-2024'),
(16,16,'none to note','rims span off','07-11-2024'),
(17,3,'none to note','nothing to note','07-17-2024'),
(18,10,'none to note','oil, oil everywhere','08-12-2024'),
(19,3,'michelin tires were not up to standard','nothing to note','08-17-2024'),
(20,9,'none to note','nothing to note','08-26-2024'),
(21,16,'none to note','nothing to note','09-02-2024'),
(22,7,'none to note','nothing to note','09-05-2024'),
(23,3,'tires where wrong size','nothing to note','11-09-2024'),
(24,5,'none to note','no batteries','11-17-2024'),
(25,16,'none to note','nothing to note','11-22-2024'),
(26,2,'no fluid found','dry...','12-02-2024'),
(27,3,'none to note','nothing to note','12-19-2024'),
(28,15,'black lung from exhaust fumes, again...','exhasting...','12-25-2024'),
(29,16,'clean isntallation','nothing to note','01-01-2025'),
(30,14,'none to note','nothing to note','01-03-2025'),
(31,16,'none to note','roaches...','02-09-2025');

-- ----------------------------
-- Table structure for CUSTOMER_FEEDBACK_REF
-- ----------------------------

CREATE TABLE CUSTOMER_FEEDBACK_REF (
    Cust_feed_ID SERIAL  PRIMARY KEY,
    Cust_ID INT NOT NULL,
    Appo_ID INT NOT NULL,
    Staff_ID INT NOT NULL,
    Cust_feed_resolved BOOLEAN NOT NULL,
    Cust_feed_rating INT CHECK(Cust_feed_rating > 0),
    Cust_feed_notes VARCHAR(250),
    FOREIGN KEY (Cust_ID) REFERENCES CUSTOMER (Cust_ID),
    FOREIGN KEY (Staff_ID) REFERENCES STAFF (Staff_ID),
    FOREIGN KEY (Appo_ID) REFERENCES APPOINTMENT (Appo_ID)
);

-- ----------------------------
-- record for CUSTOMER_FEEDBACK_REF
-- ----------------------------

INSERT INTO CUSTOMER_FEEDBACK_REF (Cust_feed_ID, Cust_ID, Appo_ID, Staff_ID, Cust_feed_resolved, Cust_feed_rating, Cust_feed_notes)
VALUES 
(1,1,2,7,TRUE,3,'no problems'),
(2,2,4,7,TRUE,4,'customer was beligerent'),
(3,3,5,7,TRUE,2,'no problems'),
(4,3,6,7,TRUE,3,'no problems'),
(5,5,14,7,TRUE,4,'no problems'),
(6,5,15,7,FALSE,5,'ran out of wrentches'),
(7,6,16,7,TRUE,5,'no problems'),
(8,6,18,7,TRUE,2,'no problems'),
(9,6,19,7,TRUE,3,'lawn dart incident'),
(10,7,21,7,FALSE,4,'no problems'),
(11,8,22,7,TRUE,4,'no problems'),
(12,8,23,7,TRUE,4,'no problems'),
(13,9,25,7,FALSE,3,'no problems'),
(14,9,27,7,TRUE,5,'customer wasnt beligerent'),
(15,10,29,7,TRUE,5,'shall not be spoken of'),
(16,1,30,7,FALSE,2,'no problems'),
(17,1,31,7,TRUE,4,'no problems');

-- ----------------------------
-- Table structure for CUST_STAFF_FEED_COMMUNICATION
-- ----------------------------

CREATE TABLE CUST_STAFF_FEED_COMMUNICATION (
    Comm_ID SERIAL  PRIMARY KEY,
    Cust_feed_ID INT NOT NULL,
    Staff_ID INT NOT NULL,
    Cust_comm_feedback TEXT,
    Cust_comm_responce TEXT,
    FOREIGN KEY (Cust_feed_ID) REFERENCES CUSTOMER_FEEDBACK_REF (Cust_feed_ID),
    FOREIGN KEY (Staff_ID) REFERENCES STAFF (Staff_ID)
);

-- ----------------------------
-- record for CUST_STAFF_FEED_COMMUNICATION
-- ----------------------------

INSERT INTO CUST_STAFF_FEED_COMMUNICATION (Comm_ID, Cust_feed_ID, Staff_ID,Cust_comm_feedback, Cust_comm_responce)
VALUES 
(1,1,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(2,2,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(3,3,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(4,3,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(5,4,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(6,4,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(7,5,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(8,6,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(9,7,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(10,8,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(11,8,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(12,9,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(13,10,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(14,11,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(15,12,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(16,13,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(17,14,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(18,15,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(19,15,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(20,16,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem'),
(21,17,7,'Lorem ipsum dolor sit amet','libero ligula tempor lorem');

-- ----------------------------
-- Table structure for PARTS_USED
-- ----------------------------

CREATE TABLE PARTS_USED (
    Appo_ID INT NOT NULL,
    parts_ID INT NOT NULL,
    Quantity INT NOT NULL CHECK(Quantity > 0),
    Date_used DATE NOT NULL,
    PRIMARY KEY (Appo_ID, parts_ID),
    FOREIGN KEY (Appo_ID) REFERENCES APPOINTMENT (Appo_ID),
    FOREIGN KEY (parts_ID) REFERENCES PARTS (parts_ID)
);

-- ----------------------------
-- record for PARTS_USED
-- ----------------------------

INSERT INTO PARTS_USED (Appo_ID, parts_ID, Quantity, Date_used)
VALUES 
(1,1,1,'01-01-2024'),
(2,1,1,'01-12-2024'),
(3,2,2,'02-7-2024'),
(4,22,1,'02-22-2024'),
(5,8,2,'03-05-2024'),
(6,7,3,'04-02-2024'),
(7,22,1,'04-08-2024'),
(8,9,1,'04-12-2024'),
(9,22,1,'04-22-2024'),
(10,1,2,'05-08-2024'),
(11,2,2,'05-12-2024'),
(12,2,1,'05-18-2024'),
(13,22,1,'05-27-2024'),
(14,7,3,'06-12-2024'),
(15,3,2,'06-18-2024'),
(16,3,2,'07-09-2024'),
(17,4,3,'07-16-2024'),
(18,3,3,'08-12-2024'),
(19,3,2,'08-17-2024'),
(20,7,1,'08-25-2024'),
(21,6,1,'09-01-2024'),
(22,9,1,'09-04-2024'),
(23,22,2,'11-09-2024'),
(24,22,3,'11-16-2024'),
(25,5,1,'11-22-2024'),
(26,9,1,'12-01-2024'),
(27,22,2,'12-19-2024'),
(28,13,1,'12-19-2024'),
(29,7,2,'01-01-2025'),
(30,15,2,'01-02-2025'),
(31,22,3,'02-09-2025'),
(1,3,1,'01-01-2024'),
(2,22,1,'01-12-2024'),
(3,22,1,'02-07-2024'),
(4,11,1,'02-22-2024'),
(5,12,2,'03-05-2024'),
(6,9,2,'04-02-2024'),
(8,14,1,'04-08-2024'),
(9,11,1,'04-12-2024'),
(10,14,3,'04-22-2024'),
(11,7,1,'05-08-2024');

-- ----------------------------
-- Table structure for PAYMENT
-- ----------------------------

CREATE TABLE PAYMENT (
    Pay_ID SERIAL  PRIMARY KEY,
    Cust_ID INT NOT NULL,
    Appo_ID INT NOT NULL,
    Pay_perc_install DECIMAL NOT NULL CHECK(Pay_perc_install > 0),
    Pay_total_payed DECIMAL NOT NULL CHECK(Pay_total_payed > 0),
    Pay_installment_period_end DATE,
    Pay_installment_period_start DATE NOT NULL CHECK(Pay_installment_period_start <= Pay_installment_period_end),
    Pay_PAYED BOOLEAN NOT NULL,
    FOREIGN KEY (Appo_ID) REFERENCES APPOINTMENT (Appo_ID),
    FOREIGN KEY (Cust_ID) REFERENCES CUSTOMER (Cust_ID)
);

-- ----------------------------
-- record for PAYMENT
-- ----------------------------

INSERT INTO PAYMENT (Pay_ID, Cust_ID, Appo_ID, Pay_perc_install, Pay_total_payed, Pay_installment_period_end, Pay_installment_period_start, Pay_PAYED)
VALUES 
(1,1,1,100,30,'01-01-2024','01-01-2024',TRUE),
(2,1,2,50,300,'02-15-2024','01-12-2024',TRUE),
(3,1,3,100,5000,'02-09-2024','02-07-2024',TRUE),
(4,2,4,50,200,'03-22-2024','02-22-2024',TRUE),
(5,3,5,50,50,'04-07-2024','03-05-2024',TRUE),
(6,3,6,100,30,'04-02-2024','04-02-2024',TRUE),
(7,3,7,100,200,'04-08-2024','04-08-2024',TRUE),
(8,3,8,50,200,'04-13-2024','04-12-2024',TRUE),
(9,3,9,50,200,'05-27-2024','04-22-2024',TRUE),
(10,4,10,50,400,'06-04-2024','05-08-2024',TRUE),
(11,4,11,50,30,'06-13-2024','05-12-2024',TRUE),
(12,4,12,100,600,'05-18-2024','05-18-2024',TRUE),
(13,4,13,100,50,'05-27-2024','05-27-2024',TRUE),
(14,5,14,50,400,'07-13-2024','06-12-2024',TRUE),
(15,5,15,50,20,'07-14-2024','06-18-2024',TRUE),
(16,6,16,100,30,'07-09-2024','07-09-2024',TRUE),
(17,6,17,100,100,'07-18-2024','07-16-2024',TRUE),
(18,6,18,50,3,'09-12-2024','08-12-2024',TRUE),
(19,6,19,50,200,'09-13-2024','08-17-2024',TRUE),
(20,7,20,50,400,'09-25-2024','08-25-2024',TRUE),
(21,7,21,100,400,'09-01-2024','09-01-2024',TRUE),
(22,8,22,100,50,'10-04-2024','09-04-2024',TRUE),
(23,8,23,50,30,'12-09-2024','11-09-2024',TRUE),
(24,8,24,50,500,'12-16-2024','11-16-2024',TRUE),
(25,9,25,100,400,'11-22-2024','11-22-2024',TRUE),
(26,9,26,100,50,'12-30-2024','12-12-2024',TRUE),
(27,9,27,100,700,'01-02-2025','12-19-2024',TRUE),
(28,10,28,50,700,NULL,'12-22-2024',FALSE),
(29,10,29,100,80,'01-01-2025','01-01-2025',TRUE),
(30,1,30,100,600,NULL,'01-02-2025',FALSE),
(31,1,31,100,400,NULL,'02-09-2025',FALSE);

-- ----------------------------
-- Table structure for INSTALLMENT
-- ----------------------------

CREATE TABLE INSTALLMENT (
    inst_ID SERIAL PRIMARY KEY,
    Pay_ID INT NOT NULL,
    amount_payed DECIMAL NOT NULL Check(amount_payed > 0),
    FOREIGN KEY (Pay_ID) REFERENCES PAYMENT (Pay_ID)
);

-- ----------------------------
-- record for INSTALLMENT
-- ----------------------------

INSERT INTO INSTALLMENT (inst_ID,Pay_ID ,amount_payed)
VALUES -- 
(1,1,30),
(2,2,150),
(3,2,150),
(4,3,5000),
(5,4,100),
(6,4,100),
(7,5,25),
(8,5,25),
(9,6,30),
(10,7,200),
(11,8,100),
(12,8,100),
(13,9,100),
(14,9,100),
(15,10,200),
(16,10,200),
(17,11,15),
(18,11,15),
(19,12,600),
(20,13,50),
(21,14,200),
(22,14,200),
(23,15,10),
(24,15,10),
(25,16,30),
(26,17,100),
(27,18,1.5),
(28,18,1.5),
(29,19,100),
(30,19,100),
(31,20,200),
(32,20,200),
(33,21,400),
(34,22,50),
(35,23,15),
(36,23,15),
(37,24,250),
(38,24,250),
(39,25,400),
(40,26,50),
(41,27,700),
(42,28,450),
(43,29,80);

--------------
-- INDEX for CUSTOMER
-------------- 

CREATE INDEX CUSTOMER_INDEX ON CUSTOMER (Cust_email,Cust_phone,Cust_first_name,Cust_last_name,Cust_postcode);

--------------
-- INDEX for STAFF
--------------

CREATE INDEX STAFF_INDEX ON STAFF (Staff_email,Staff_phone,Staff_role,Staff_first_name,Staff_last_name,Staff_postcode);

--------------
-- INDEX for PARTS
-------------- 

CREATE INDEX PARTS_INDEX ON PARTS (parts_name,parts_stock_quant,parts_availability);

--------------
-- INDEX for CARS
-------------- 

CREATE INDEX CARS_INDEX ON CARS (Car_VIN,Car_licence_plate);

--------------
-- INDEX for SERVICES
--------------

CREATE INDEX SERVICES_INDEX ON SERVICES (Serv_cost,Serv_department);

--------------
-- INDEX for APPOINTMENT
--------------

CREATE INDEX APPOINTMENT_INDEX ON APPOINTMENT (Appo_time,Appo_date,Appo_Status);

--------------
-- INDEX for TOOLS
-------------- 

CREATE INDEX TOOLS_INDEX ON TOOLS (Tool_quant,Tool_name);

--------------
-- INDEX for PAYMENT
-------------- 

CREATE INDEX PAYMENT_INDEX ON PAYMENT (Pay_PAYED,Pay_perc_install);

--------------
-- INDEX for INSTALLMENT
-------------- 

CREATE INDEX INSTALLMENT_INDEX ON INSTALLMENT (amount_payed);
