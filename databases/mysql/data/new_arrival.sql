-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: books
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `new_arrival`
--

DROP TABLE IF EXISTS `new_arrival`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_arrival` (
  `isbn` varchar(15) NOT NULL,
  `title` varchar(1023) DEFAULT NULL,
  `authors` varchar(1023) DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_arrival`
--

LOCK TABLES `new_arrival` WRITE;
/*!40000 ALTER TABLE `new_arrival` DISABLE KEYS */;
INSERT INTO `new_arrival` VALUES ('9780007179732','The Monk Who Sold His Ferrari: A Fable about Fulfilling Your Dreams and Reaching Your Destiny (Revised)','Robin S. Sharma','2015-12-31'),('9780060009427','How to Read Literature Like a Professor','Thomas C. Foster','2014-11-14'),('9780060084530','Sharpe\'s Prey (Sharpe  #5)','Bernard Cornwell','2012-10-23'),('9780060254926','Where the Wild Things Are','Maurice Sendak','2012-12-26'),('9780060256753','Lafcadio  the Lion Who Shot Back','Shel Silverstein','2013-09-24'),('9780060519131','Savannah Blues (Weezie and Bebe Mysteries  #1)','Mary Kay Andrews','2012-07-10'),('9780060542382','Amelia Bedelia 50th Anniversary Library: Amelia Bedelia  Amelia Bedelia and the Surprise Shower  and Play Ball  Amelia Bedelia','Peggy Parish/Various','2012-12-26'),('9780060572341','Where the Sidewalk Ends: Poems and Drawings','Shel Silverstein','2014-02-18'),('9780060574215','Men Are from Mars  Women Are from Venus','John Gray','2012-04-03'),('9780060583316','Like A Charm','Karin Slaughter/Peter Robinson/John Connolly/Denise Mina/Mark Billingham','2015-05-26'),('9780060598853','Back to the Bedroom (Elsie Hawkins #1)','Janet Evanovich','2014-02-25'),('9780060598891','The Rocky Road to Romance (Elsie Hawkins #4)','Janet Evanovich','2011-11-29'),('9780060609177','Meeting Jesus Again for the First Time: The Historical Jesus and the Heart of Contemporary Faith','Marcus J. Borg','2015-04-07'),('9780060609191','Reading the Bible Again for the First Time: Taking the Bible Seriously but Not Literally','Marcus J. Borg','2015-04-07'),('9780060652920','Mere Christianity','C.S. Lewis/Kathleen Norris','2015-04-21'),('9780060732608','Ariel: The Restored Edition','Sylvia Plath/Frieda Hughes','2018-03-06'),('9780060773755','A Quick Bite (Argeneau #1)','Lynsay Sands','2020-03-31'),('9780060915186','An American Childhood','Annie Dillard','2013-10-15'),('9780060922559','Legends  Lies  Cherished Myths of World History','Richard Shenkman','2011-11-29'),('9780060925758','Soul Mates: Honouring the Mysteries of Love and Relationship','Thomas  Moore','2013-12-13'),('9780061129735','The Art of Loving','Erich Fromm/Peter D. Kramer/Rainer Funk','2019-08-06'),('9780061144899','When the Heart Waits: Spiritual Direction for Life\'s Sacred Questions','Sue Monk Kidd','2016-10-11'),('9780061177583','Ham on Rye','Charles Bukowski','2014-07-29'),('9780061177590','Women','Charles Bukowski','2014-07-29'),('9780062511409','El alquimista: una fábula para seguir tus sueños','Paulo Coelho/Juan Godó Costa','2018-10-23'),('9780064401685','The Wish Giver: Three Tales of Coven Tree','Bill Brittain/Andrew Glass','2019-04-02'),('9780064407311','Monster','Walter Dean Myers','2019-03-05'),('9780071485425','Sclerotherapy and vein treatment','Robert A. Weiss/Margaret A. Weiss/Karen L. Beasley','2011-12-30'),('9780099285045','A Moveable Feast','Ernest Hemingway','2012-09-06'),('9780140140828','Granta 7','Bill Buford/Clive Sinclair/Graham Swift/Martin Amis/Rose Tremain/A.N. Wilson/Pat Barker/Julian Barnes/Ursula Bentley/William Boyd/Buchi Emecheta/Alan Judd/Maggie Gee/Kazuo Ishiguro/Adam Mars-Jones/Ian McEwan/Shiva Naipaul/Philip Norman/Christopher Priest/Salman Rushdie/Lisa St. Aubin de Terán','2013-04-01'),('9780141185606','Invitation to a Beheading','Vladimir Nabokov','2015-08-03'),('9780345362490','Magnificat (Galactic Milieu Trilogy  #3)','Julian May','2011-04-20'),('9780345538376','J.R.R. Tolkien 4-Book Boxed Set: The Hobbit and The Lord of the Rings','J.R.R. Tolkien','2012-09-25'),('9780373713011','Expectant Father','Melinda Curtis','2011-12-15'),('9780380972333','The Iron Dragon\'s Daughter','Michael Swanwick','2012-02-28'),('9780385086165','A Man of the People','Chinua Achebe','2016-08-16'),('9780394704371','The Will to Power','Friedrich Nietzsche/Walter Kaufmann/R.J. Hollingdale','2011-08-17'),('9780394800912','Dr. Seuss\'s Sleep Book','Dr. Seuss','2012-07-24'),('9780413735904','A Clockwork Orange (Stage Play)','Anthony Burgess','2017-03-10'),('9780486215310','Best Science Fiction Stories of H. G. Wells','H.G. Wells','2011-11-24'),('9780486276809','The Secret Garden Coloring Book','Brian Doherty/Frances Hodgson Burnett/Thea Kliros','2014-07-16'),('9780486286563','Children\'s Christmas Stories and Poems: In Easy-to-Read Type','Bob Blaisdell/Pat Ronson Stewart','2011-11-17'),('9780486297163','Best Ghost and Horror Stories','Bram Stoker/Richard Dalby','2011-11-02'),('9780486402185','Ruthless Rhymes for Heartless Homes and More Ruthless Rhymes','Harry Graham/Frank J. Moore/D. Streamer','2013-06-19'),('9780553589474','Public Secrets','Nora Roberts','2012-03-27'),('9780571172955','Orlando: A Biography: Film Screenplay','Sally Potter/Virginia Woolf','2013-10-25'),('9780571205219','The Journals of Sylvia Plath','Sylvia Plath/Karen V. Kukil','2013-06-13'),('9780573605734','Breakfast of Champions','Robert Egan/Kurt Vonnegut Jr.','2017-04-07'),('9780575073609','Time and Again (Time  #1)','Jack Finney','2012-05-01'),('9780673393555','American Genesis: Captain John Smith and the Founding of Virginia','Alden T. Vaughan','2019-08-17'),('9780679439202','Sand and Foam','Kahlil Gibran/جبران خليل جبران','2011-06-14'),('9780684873176','The Mutineer: Rants  Ravings  and Missives from the Mountaintop  1977-2005','Hunter S. Thompson','2013-03-01'),('9780688172374','Desert Flower','Waris Dirie/Cathleen Miller','2011-03-15'),('9780689848377','Tales of Mystery and Madness','Edgar Allan Poe/Gris Grimly','2011-08-30'),('9780689851902','What a Scare  Jesse Bear','Nancy White Carlstrom/Bruce Degen','2012-03-21'),('9780735619654','Object Thinking','David      West','2019-07-23'),('9780743474764','The Best of Ray Bradbury','Ray Bradbury/Dave Gibbons/Richard Corben/Mike Mignola','2012-06-21'),('9780743477109','Macbeth','William Shakespeare','2013-07-01'),('9780743484862','As You Like It','William Shakespeare','2011-08-23'),('9780747544210','Easy Riders  Raging Bulls: How the Sex-Drugs-And-Rock-\'N\'-Roll Generation Saved Hollywood','Peter Biskind','2014-12-10'),('9780753811467','Maya','Jostein Gaarder/James Anderson','2011-05-10'),('9780765341280','Rebekah (Women of Genesis  #2)','Orson Scott Card','2012-03-27'),('9780786918089','Thornhold (The Harpers  #16; Songs & Swords  #4)','Elaine Cunningham','2011-12-27'),('9780792737360','A Pocket Full of Rye: A BBC Radio 4 Full-Cast Dramatisation','Agatha Christie/Michael Bakewell/June Whitfield/Nicky Henson/Derek Waring/Natasha Pyne','2014-04-01'),('9780810111141','Billy Budd  Sailor and Other Uncompleted Writings: The Writings of Herman Melville  Volume 13','Herman Melville/Hershel Parker/G. Thomas Tanselle/Harrison Hayford/Robert Sandberg/Alma MacDougall Reising','2017-09-15'),('9780812508642','Pastwatch: The Redemption of Christopher Columbus','Orson Scott Card','2016-03-01'),('9780878057009','Conversations with John Updike','James Plath','2011-10-21'),('9780879232153','Hamlet\'s Mill: An Essay Investigating the Origins of Human Knowledge and Its Transmission Through Myth','Giorgio De Santillana/Hertha Von Dechend','2015-03-24'),('9780922729364','Access the Power of Your Higher Self: Your Source of Inner Guidance and Spiritual Transformation (Pocket Guides to Practical Spirituality)','Elizabeth Clare Prophet','2017-09-21'),('9780922729487','Soul Mates & Twin Flames: The Spiritual Dimension of Love & Relationships (Pocket Guide to Practical Spirituality)','Elizabeth Clare Prophet','2017-08-17'),('9780978605261','George Washington\'s Sacred Fire','Peter A. Lillback/Jerry Newcombe','2011-05-31'),('9781401204518','Superman: Secret Identity','Kurt Busiek/Stuart Immonen','2013-04-09'),('9781560600800','Miracleman  Book Three: Olympus','Alan Moore/John Totleben/Steve Oliff/Joe Caramagna/Michael Kelleher/Peter Milligan/Mike Allred','2015-04-21'),('9781564775009','Happy Endings: Finishing the Edges of Your Quilts','Mimi Dietrich','2013-06-04'),('9781566918084','Rick Steves\' Europe Through the Back Door','Rick Steves','2017-09-12'),('9781580495790','A Christmas Carol','Charles Dickens','2012-01-01'),('9781590171035','Mistress Masham\'s Repose','T.H. White/Fritz Eichenberg','2012-03-07'),('9781590175866','Diary of a Man in Despair','Friedrich Reck-Malleczewen/Paul Rubens/Richard J. Evans','2013-02-12'),('9781591136446','The Play Soldier','Chet Green','2011-05-22'),('9781593979263','The Full Box (Full  #1-4)','Janet Evanovich/Charlotte Hughes','2016-02-16'),('9781595325556','The Tarot Cafe  #1','Sang-Sun Park','2017-03-07'),('9781600100369','The Complete Dick Tracy Volume 1: 1931-1933','Chester Gould/Ashley Wood/Max Allan Collins','2012-01-03'),('9781790877799','The Perfume Factory','Alex Austin','2018-12-12'),('9781841493114','First Meetings: In the Enderverse','Orson Scott Card','2013-03-01'),('9781873982983','The Perfume of the Lady in Black','Gaston Leroux/Margaret Jull Costa/Terry Hale','2015-02-25'),('9781885865243','Through a Brazen Mirror','Delia Sherman/Cortney Skinner/Ellen Kushner','2015-02-25'),('9781890318239','Enthusiasm and Divine Madness','Josef Pieper/Richard Winston/Clara Winston','2019-02-11'),('9781892062437','Teleportation: From Star Trek to Tesla','Commander X/Tim R. Swartz','2012-08-20'),('9781896597669','The Acme Novelty Datebook  Vol. 1  1986-1995','Chris Ware','2013-11-26'),('9781897784310','Rob Roy MacGregor','Nigel Tranter','2012-09-01'),('9781903436912','Romeo and Juliet','William Shakespeare/René Weis','2012-07-15'),('9781904633389','The Iliad','Homer/Andrew Lang','2011-09-01'),('9781932386226','Artesia Volume 1','Mark Smylie','2011-09-20'),('9783110172799','Syntactic Structures','Noam Chomsky/David W. Lightfoot','2012-09-10'),('9783829601863','Libraries','Candida Höfer/Umberto Eco','2014-08-20'),('9788172235222','Mistaken Identity','Nayantara Sahgal','2016-12-30'),('9788432216886','El Perfume: Historia De Un Asesino','Patrick Süskind','2018-02-19'),('9788433920706','Pedro Páramo','Juan Rulfo','2013-10-31'),('9788433920867','Relatos de lo inesperado','Roald Dahl/Carmelina Payá/Antonio Samons','2016-06-30'),('9789580408550','El diablo de la botella','Robert Louis Stevenson/Diana Castellanos/Eleonora Garcia Larralde','2018-07-15');
/*!40000 ALTER TABLE `new_arrival` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-06 20:37:24