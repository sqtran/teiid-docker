/************************************************/
/********        My SQL Script      *************/
/************************************************/

drop database if exists demo;

Create database demo;
use demo;

DROP TABLE if exists `Person`;

CREATE TABLE `Person` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `PersonId` mediumint,
  `LastName` varchar(255) default NULL,
  `FirstName` varchar(255) default NULL,
  `Address` varchar(255) default NULL,
  `City` varchar(255),
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `Person` (`PersonId`,`LastName`,`FirstName`,`Address`,`City`) VALUES (1,"Stein","Aimee","Ap #435-407 Ultricies St.","Bergerac"),(2,"Stanley","Rhoda","7951 Vitae, Avenue","São José dos Pinhais"),(3,"Witt","Ursa","P.O. Box 205, 2060 Enim Road","Ribeirão Preto"),(4,"Mcintyre","Glenna","913-1199 Elit. St.","Ełk"),(5,"Klein","Hadassah","439 Mauris Street","Zeveneken"),(6,"Fields","Megan","152-7262 Felis Street","Cuglieri"),(7,"Mcfadden","Michelle","744 Sit Ave","Fürth"),(8,"Douglas","Tana","229-2177 Placerat. Road","Allerona"),(9,"Mcbride","Vivian","4538 Dolor Rd.","Rahim Yar Khan"),(10,"Tran","Kennedy","Ap #438-2849 Nullam Rd.","Koolkerke");
INSERT INTO `Person` (`PersonId`,`LastName`,`FirstName`,`Address`,`City`) VALUES (11,"Case","Xena","Ap #400-8285 Ac Road","Saint Paul"),(12,"Farmer","Thor","769-7984 Duis Avenue","Épinal"),(13,"Gordon","Mariam","P.O. Box 914, 457 Elit, Avenue","Philadelphia"),(14,"Schmidt","Ulric","729-9774 Non St.","Galmaarden"),(15,"Romero","Rogan","6577 Elit Ave","Toowoomba"),(16,"Hunt","Barrett","P.O. Box 369, 4494 Nunc Ave","Pramaggiore"),(17,"Allison","Chava","750-4796 Commodo St.","Tongrinne"),(18,"Forbes","Latifah","894-7872 Turpis Road","Norfolk"),(19,"Gould","Leonard","3092 Nascetur Rd.","Sandy"),(20,"Finch","Mollie","Ap #796-5998 Ligula. St.","Genzano di Lucania");
INSERT INTO `Person` (`PersonId`,`LastName`,`FirstName`,`Address`,`City`) VALUES (21,"Gregory","Alma","166-6975 Luctus Ave","Alvito"),(22,"Velazquez","Nina","9072 Tellus Rd.","Wandlitz"),(23,"Lopez","Hedda","P.O. Box 406, 2560 Tempus St.","Sainte-Ode"),(24,"Webster","Shannon","Ap #111-5633 Nibh Av.","Elversele"),(25,"Cruz","Aphrodite","720-1181 Curabitur Road","Peralillo"),(26,"Goodwin","Kerry","508-1022 Ac St.","Roosdaal"),(27,"Mathis","Micah","P.O. Box 885, 4221 Dictum. Road","Neerglabbeek"),(28,"Cline","Carlos","239-6759 At St.","Mont"),(29,"Powell","Priscilla","Ap #809-4371 Magna. Road","Vernole"),(30,"Dotson","Hayes","Ap #659-408 Dolor. Ave","Centa San Nicolò");
INSERT INTO `Person` (`PersonId`,`LastName`,`FirstName`,`Address`,`City`) VALUES (31,"Bailey","Selma","P.O. Box 988, 4921 Pede Rd.","Bay Roberts"),(32,"Bolton","Astra","P.O. Box 389, 3657 In Rd.","HŽron"),(33,"Holloway","Leslie","P.O. Box 100, 6586 Leo. Ave","Pittsburgh"),(34,"Nunez","Baker","P.O. Box 256, 8529 Ut St.","Calmar"),(35,"Mercado","Teegan","9147 Nisi St.","Brandon"),(36,"Boyle","Leonard","P.O. Box 439, 9387 Malesuada Road","Monstreux"),(37,"Skinner","Jordan","P.O. Box 637, 9173 Felis Ave","Llanelli"),(38,"Randolph","Lyle","Ap #984-8578 Interdum Road","Cassaro"),(39,"Rodriquez","Oren","481 Natoque Rd.","Deventer"),(40,"Aguilar","Orlando","9432 Suspendisse St.","Maintal");
INSERT INTO `Person` (`PersonId`,`LastName`,`FirstName`,`Address`,`City`) VALUES (41,"Preston","Ryder","890-367 Ullamcorper Rd.","Clarksville"),(42,"Blanchard","Brenda","373-5452 Orci Road","Maple Creek"),(43,"Lane","Kerry","434 Eu St.","IJlst"),(44,"Wooten","Steven","Ap #876-6095 Arcu Road","Sint-Pieters-Kapelle"),(45,"Ray","Vanna","Ap #130-1161 Iaculis St.","Sobral"),(46,"Schneider","Allistair","P.O. Box 693, 1358 Proin Road","Timaru"),(47,"Mack","Winter","8468 Et St.","Stratford-upon-Avon"),(48,"King","Harper","Ap #580-1702 Lacus. Av.","Casnate con Bernate"),(49,"Rasmussen","Xanthus","Ap #403-548 Pede. Rd.","North Barrackpur"),(50,"Hobbs","Armando","P.O. Box 569, 3360 Arcu Rd.","Cagli");
