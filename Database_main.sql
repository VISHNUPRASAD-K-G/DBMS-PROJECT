-- DATABASE COMMANDS

-- TO CREATE VIEW FOR SELECTING QUESTION FROM USER SELECTED CATEGORY
CREATE VIEW VIEW_QNS AS
SELECT Q_NO, QUESTION, OPT1, OPT2, OPT3, OPT4, CRT_ANS
FROM QUESTIONS
WHERE CATE = 'Nature';

-- GETTING VALUES FROM VIEW TABLE
SELECT * FROM VIEW_QNS;

-- ---------------------------------------------------------------------------------------- --

-- FOR TESTING

-- USERNAME: ROOT
-- PASSWORD: 1234
-- DATABASE NAME: PROJECT

DROP DATABASE PROJECT; -- USE IF NEEDED, CAREFUL

CREATE DATABASE PROJECT;
USE PROJECT;

-- ---------------------------------------------------------------------------------------- --

CREATE TABLE PLAYERS (
    USERNAME VARCHAR(30) NOT NULL,
    EMAIL VARCHAR(30) NOT NULL PRIMARY KEY,
    PASSWORD VARCHAR(30) NOT NULL);


-- INSERTING VALUES TO PLAYERS TABLE
INSERT INTO PLAYERS VALUES ('AJAY', 'AJAY@GMAIL.COM', 'SJC'),
                           ('NOYAL', 'NOYAL@GMAIL.COM', 'SJC'),
                           ('JUDIN', 'JUDIN@GMAIL.COM', 'SJC'),
                           ('JUSTIN', 'JUSTIN@GMAIL.COM', 'SJC'), 
                           ('VISHNU', 'VISHNU@GMAIL.COM', 'SJC');

-- ---------------------------------------------------------------------------------------- --

CREATE TABLE QUESTIONS (
  Q_NO INT PRIMARY KEY AUTO_INCREMENT,
  QUESTION VARCHAR(300) NOT NULL,
  OPT1 VARCHAR(100) NOT NULL,
  OPT2 VARCHAR(100) NOT NULL,
  OPT3 VARCHAR(100) NOT NULL,
  OPT4 VARCHAR(100) NOT NULL,
  CORRECT_ANSWER VARCHAR(100) NOT NULL);

-- ---------------------------------------------------------------------------------------- --

CREATE TABLE CATEGORIES (
    CATEGORY_NAME VARCHAR(30) PRIMARY KEY,
    CAT_DESC VARCHAR(100));

INSERT INTO CATEGORIES VALUES("Computer", "QUESTIONS ABOUT COMPUTER AND ITS SYSTEMS");
INSERT INTO CATEGORIES VALUES("Automobiles", "QUESTIONS ABOUT THE WORLD OF AUTOMOBILES");
INSERT INTO CATEGORIES VALUES("Business", "QUESTIONS ABOUT BUSINESS AND LAWS");
INSERT INTO CATEGORIES VALUES("General Knowledge", "QUESTIONS ABOUT GK");
INSERT INTO CATEGORIES VALUES("Nature", "QUESTIONS ABOUT MOTHER NATURE");

-- ---------------------------------------------------------------------------------------- --

ALTER TABLE QUESTIONS
ADD CATE_NAME VARCHAR(30) NOT NULL,
ADD FOREIGN KEY(CATE_NAME) REFERENCES CATEGORIES(CATEGORY_NAME);


-- INSERTION QUERIES, MADE USING EXCEL SHEET
INSERT INTO QUESTIONS VALUES(1,"What is the best-selling car of all time?","Toyota Corolla","Mercedes Benz E-Class","Volkswagen Beetle","Mini Cooper","Toyota Corolla","Automobiles");
INSERT INTO QUESTIONS VALUES(2,"What country consumes the most automobile fuel every year?","Saudi Arabia","India","United States","China","United States","Automobiles");
INSERT INTO QUESTIONS VALUES(3,"What is the most popular color for a car?","Silver","Black","Grey","White","White","Automobiles");
INSERT INTO QUESTIONS VALUES(4,"What is the world’s largest automotive company?","Toyota Motors","Honda","Hyundai","Mitsubishi","Toyota Motors","Automobiles");
INSERT INTO QUESTIONS VALUES(5,"What car company started the first mass-production?","Honda","Citroën","Ford","Toyota Motors","Ford","Automobiles");
INSERT INTO QUESTIONS VALUES(6,"The Ultimate Driving Machine is the slogan for which car company?","BMW","Mercedes","Toyota Motors","Ford","BMW","Automobiles");
INSERT INTO QUESTIONS VALUES(7,"What car is associated with James Bond?","Aston Martin","Mitsubishi","BMW","Mercedes","Aston Martin","Automobiles");
INSERT INTO QUESTIONS VALUES(8,"How long does it take an airbag to inflate?","35ms","60ms","10ms","40ms","40ms","Automobiles");
INSERT INTO QUESTIONS VALUES(9,"Which car logo look like Biological Male Symbol?","Volkswagen","Volvo","BMW","Alfa Romeo","Volvo","Automobiles");
INSERT INTO QUESTIONS VALUES(10,"What car company makes airplane engines","Rolls-Royce","BMW","Toyota Motors","Honda","Rolls-Royce","Automobiles");
INSERT INTO QUESTIONS VALUES(11,"When is the National Startup Day celebrated in India every year?","16th January","12th January","20th January","24th January","16th January","Business");
INSERT INTO QUESTIONS VALUES(12,"Which of the following organizations is known as Market Regulator in India?","SEBI","IBA","AMFI","NSDL","SEBI","Business");
INSERT INTO QUESTIONS VALUES(13,"Who among the following is the founder of the World Economic Forum?","Klaus Schwab","John Kenneth Galbraith","Robert Zoellick","Paul Krugman","Klaus Schwab","Business");
INSERT INTO QUESTIONS VALUES(14,"In a Socialist Economy, all the factors of production are owned and controlled by _____","The public","The producers","The state","The labour-unions","The state","Business");
INSERT INTO QUESTIONS VALUES(15,"Marginal Productivity of labour is zero. It indicates which type of unemployment?","Open unemployment","Seasonal unemployment","Disguised unemployment","Structural unemployment","Disguised unemployment","Business");
INSERT INTO QUESTIONS VALUES(16,"Serious Fraud Investigation Office (SFIC) is a multi-disciplinary organization under _____","Ministry of Corporate Affairs","Reserve Bank of India","Enforcement Directorate","Central Bureau of Investigation","Ministry of Corporate Affairs","Business");
INSERT INTO QUESTIONS VALUES(17,"Serious Fraud Investigation Office investigates cases of fraud received from _____","Reserve Bank of India","Securities and Exchange Board of India","Ministry of Corporate Affairs","Insurance Regulatory and Development Authority","Ministry of Corporate Affairs","Business");
INSERT INTO QUESTIONS VALUES(18,"What does the acronym IPO stand for in the business world","Initial public offering","In for public offering","Indian public offering","International public offering","Initial public offering","Business");
INSERT INTO QUESTIONS VALUES(19,"In terms of monetary value, which country imports the most","India","China","Canada","USA","USA","Business");
INSERT INTO QUESTIONS VALUES(20,"Auctions or dynamic pricing markets are examples of _____","B2B commerce","C2B commerce","C2C commerce ","None of the above","B2B commerce","Business");
INSERT INTO QUESTIONS VALUES(21,"The Second Generation Computer used ______","Transistors","Integrated Circuits","Vaccum Tubes","Chip","Transistors","Computer");
INSERT INTO QUESTIONS VALUES(22,"Who among the following has designed the Erlang programing language?","Larry Wall","Guido van Rossum","Joe Armstrong","Yukihiro Matsumoto","Joe Armstrong","Computer");
INSERT INTO QUESTIONS VALUES(23,"To store data and perform calculation, computer uses ________ number system.","Hecxadecimal","Binary","Octadecimal","Decimal","Binary","Computer");
INSERT INTO QUESTIONS VALUES(24,"Who had developed the first commercially available portable computer?","Adam Osborne","Ada Lovelace","Adi Shamir","Alain Glavieux","Adam Osborne","Computer");
INSERT INTO QUESTIONS VALUES(25,"The information stored in a computer is known as ____","Facts","Files","Directory or repository","Data","Data","Computer");
INSERT INTO QUESTIONS VALUES(26,"What type of storage device is USB?","Primary","Secondary","Auxiliary","Additional","Secondary","Computer");
INSERT INTO QUESTIONS VALUES(27,"How much Bits is 1 Byte?","2","5","8","12","8","Computer");
INSERT INTO QUESTIONS VALUES(28,"PageMaker, the first desktop publishing program, is related to ______","Windows","UNIX","LINUX","A & B both","Windows","Computer");
INSERT INTO QUESTIONS VALUES(29,"In Email Services, CC stands for _______","Creative copy","Creative common","Carbon common","Carbon copy","Carbon copy","Computer");
INSERT INTO QUESTIONS VALUES(30,"Which one is the first fully suppored 64-bit operating system","Windows vista","Linux","Mac","Windows XP","Linux","Computer");
INSERT INTO QUESTIONS VALUES(31,"What is the capital of Brazil?","Rio de Janeiro","Buenos Aires","Lima","Brasília","Brasília","General Knowledge");
INSERT INTO QUESTIONS VALUES(32,"Who invented the steam engine?","James Watt","Benjamin Franklin","Michael Faraday","Thomas Edison","James Watt","General Knowledge");
INSERT INTO QUESTIONS VALUES(33,"What is the largest planet in the solar system?","Earth","Mars","Saturn","Jupiter","Jupiter","General Knowledge");
INSERT INTO QUESTIONS VALUES(34,"Who wrote the play Hamlet?","Charles Dickens","Mark Twain","Edgar Allan Poe","William Shakespeare","William Shakespeare","General Knowledge");
INSERT INTO QUESTIONS VALUES(35,"Who was the first President of the United States?","George Washington","John Adams","James Madison","Thomas Jefferson","George Washington","General Knowledge");
INSERT INTO QUESTIONS VALUES(36,"What is the capital of China?","Beijing","Seoul","Tokyo","HongKong","Beijing","General Knowledge");
INSERT INTO QUESTIONS VALUES(37,"Who painted the painting The Starry Night?","Pablo Picasso","Vincent van Gogh","Salvador Dali","Claude Monet","Vincent van Gogh","General Knowledge");
INSERT INTO QUESTIONS VALUES(38,"What is the largest desert in the world?","Thar","Sahara","Mojave","Atacama","Sahara","General Knowledge");
INSERT INTO QUESTIONS VALUES(39,"Who wrote the novel Pride and Prejudice?","Emily Bronte","Charles Dickens","Jane Austen","Mark Twain","Jane Austen","General Knowledge");
INSERT INTO QUESTIONS VALUES(40,"What is the highest peak in North America?","k2","Denali","Aconcagua","Everest","Denali","General Knowledge");
INSERT INTO QUESTIONS VALUES(41,"Which mushroom is one of the most dangerous poisonous mushrooms?","Marefoil","Pale grebe","Morel"," black winter","Pale grebe","Nature");
INSERT INTO QUESTIONS VALUES(42,"What is another name for a cepes mushroom?","Boletus","Podosinovik","Mokhovik","Pale grebe","Boletus","Nature");
INSERT INTO QUESTIONS VALUES(43,"What mushrooms grow on trees and stumps?","Sour mushrooms","Mountain peasants","Open boletus","Four","Open boletus","Nature");
INSERT INTO QUESTIONS VALUES(44,"How many pips are there inside one cherry?","One","Two","Three","dried grapes","One","Nature");
INSERT INTO QUESTIONS VALUES(45,"What is dried grapes called?","Prunes","apricots","Raisins","Bramble","Raisins","Nature");
INSERT INTO QUESTIONS VALUES(46,"A berry that is often confused with blueberries. It also grows in the forest.","Blueberries","Lingonberry","Cranberry","Bushberry","Blueberries","Nature");
INSERT INTO QUESTIONS VALUES(47,"What is the name of the berry that has the prickliest bush?","Raspberry","Currants","Gooseberry","Bushberry","Gooseberry","Nature");
INSERT INTO QUESTIONS VALUES(48,"What is the name for a baby swan?","Swanling","Gosling","Cygnet","Chick","Cygnet","Nature");
INSERT INTO QUESTIONS VALUES(49,"Which tree has leaves that look like palms?","Oak","Mango","Maple","Oak","Maple","Nature");
INSERT INTO QUESTIONS VALUES(50,"On which trees do acorns grow?","Birch","Ash","Rowan","Pine","Oak","Nature");

-- ---------------------------------------------------------------------------------------- --

-- TO TRACK THE ACTIVITY OF USER IN THE QUIZ APP
CREATE TABLE QUIZ_ACTIVITY (
  ID INTEGER AUTO_INCREMENT PRIMARY KEY,
  PLAYER_EMAIL VARCHAR(30) NOT NULL,
  DATE_PLAYED DATETIME NOT NULL,
  CATEGORY VARCHAR(30) NOT NULL,
  QUESTION VARCHAR(300) NOT NULL,
  USER_ANSWER VARCHAR(100) NOT NULL,
  CORRECT_ANSWER VARCHAR(100) NOT NULL,
  FOREIGN KEY (PLAYER_EMAIL) REFERENCES PLAYERS(EMAIL));