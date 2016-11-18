DROP TABLE IF EXISTS Account;

CREATE TABLE Account (
  id SERIAL PRIMARY KEY,
  AccountId integer NULL,
  phone varchar(100) default NULL,
  company varchar(255),
  balance varchar(100) default NULL
);

INSERT INTO Account (AccountId,phone,company,balance) VALUES (1,'(208) 240-5224','Consectetuer Adipiscing Elit LLP','$24,395'),(2,'(892) 687-5608','Sed Nunc Consulting','$01,585'),(3,'(670) 311-8940','Eleifend Limited','$10,666'),(4,'(746) 618-6113','Nunc Sollicitudin Commodo Incorporated','$39,957'),(5,'(865) 446-8778','Ornare Lectus Ante Company','$06,915'),(6,'(557) 480-4242','Auctor Inc.','$92,623'),(7,'(136) 212-4049','Feugiat Associates','$81,692'),(8,'(770) 698-6474','Sit Amet Corp.','$65,315'),(9,'(363) 678-0668','Ultricies Ligula Nullam Ltd','$9,262'),(10,'(721) 176-7716','Nam LLP','$89,512');
INSERT INTO Account (AccountId,phone,company,balance) VALUES (11,'(546) 209-5050','Dolor LLP','$30,016'),(12,'(433) 676-8527','Consectetuer Rhoncus Nullam Corporation','$01,446'),(13,'(804) 474-8081','Pellentesque PC','$45,633'),(14,'(950) 135-4277','Elit Pede Malesuada Ltd','$11,604'),(15,'(283) 840-7828','Odio Corporation','$44,509'),(16,'(711) 312-9718','Sit Industries','$53,934'),(17,'(548) 242-0159','Consectetuer Adipiscing Institute','$85,060'),(18,'(266) 540-6811','Nisi Aenean PC','$82,846'),(19,'(353) 368-1513','Ornare Placerat Orci LLP','$98,110'),(20,'(434) 402-8425','Lacus Pede Limited','$18,519');
INSERT INTO Account (AccountId,phone,company,balance) VALUES (21,'(425) 358-5803','Donec Tempor Est Foundation','$73,077'),(22,'(201) 506-8722','Nec Associates','$36,957'),(23,'(747) 603-1040','Eleifend Associates','$92,909'),(24,'(176) 547-1571','Nisl Sem Company','$73,218'),(25,'(317) 388-3094','Mauris Ipsum Porta LLP','$31,115'),(26,'(779) 589-2079','At Foundation','$38,095'),(27,'(687) 658-2550','Et Eros Proin Industries','$71,039'),(28,'(128) 833-5570','Justo Eu Arcu LLC','$80,648'),(29,'(259) 432-5341','Pellentesque LLP','$49,448'),(30,'(669) 465-6467','Tincidunt Dui Augue PC','$04,767');
INSERT INTO Account (AccountId,phone,company,balance) VALUES (31,'(656) 628-2006','Diam Duis Mi Corporation','$18,721'),(32,'(116) 459-0813','Vel Quam Dignissim Corp.','$21,531'),(33,'(247) 219-7857','Malesuada Institute','$47,127'),(34,'(487) 823-6276','Curabitur LLC','$77,261'),(35,'(880) 669-1800','Eget Metus Eu Limited','$86,010'),(36,'(176) 102-9994','Elit Fermentum Incorporated','$52,560'),(37,'(362) 723-6401','Etiam Bibendum Inc.','$63,054'),(38,'(537) 155-7557','In LLC','$77,332'),(39,'(995) 569-7945','Diam Consulting','$91,842'),(40,'(677) 542-6971','Nulla Ltd','$19,554');
INSERT INTO Account (AccountId,phone,company,balance) VALUES (41,'(784) 397-1051','Nulla LLP','$11,445'),(42,'(975) 218-2021','Sagittis Institute','$89,561'),(43,'(832) 316-9926','At Foundation','$95,080'),(44,'(284) 502-1044','At Consulting','$67,583'),(45,'(452) 643-1341','Aliquet Sem Ut PC','$67,764'),(46,'(554) 784-3479','Pede Cum PC','$62,701'),(47,'(945) 792-7582','Eu Metus In Associates','$87,958'),(48,'(223) 855-1772','Vivamus Nisi Mauris Incorporated','$82,361'),(49,'(893) 220-6718','Et Ltd','$70,453'),(50,'(567) 807-4804','Mattis Integer Eu Company','$74,019');
INSERT INTO Account (AccountId,phone,company,balance) VALUES (51,'(577) 476-0962','Malesuada Fames Ac Institute','$30,193'),(52,'(312) 693-9183','Orci Consectetuer Consulting','$43,965'),(53,'(138) 158-7350','Et Magnis Dis Institute','$48,628'),(54,'(287) 410-4971','Vitae Associates','$76,857'),(55,'(894) 179-6803','Ut LLP','$39,771'),(56,'(248) 907-5008','Phasellus Dapibus LLP','$30,918'),(57,'(803) 629-5232','Curae; Phasellus LLP','$88,695'),(58,'(113) 945-9190','Suspendisse Aliquet LLP','$71,048'),(59,'(352) 916-6280','Molestie PC','$03,817'),(60,'(431) 505-4034','In LLP','$35,887');
