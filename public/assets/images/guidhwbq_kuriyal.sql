-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 09, 2018 at 01:42 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guidhwbq_kuriyal`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_giude`
--

CREATE TABLE `book_giude` (
  `id` int(100) NOT NULL,
  `uname` varchar(500) NOT NULL,
  `uplace` varchar(5000) NOT NULL,
  `uemail` varchar(500) NOT NULL,
  `ucontact` varchar(100) NOT NULL,
  `guideId` varchar(100) NOT NULL,
  `utravel` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book_upcoming_event`
--

CREATE TABLE `book_upcoming_event` (
  `id` int(50) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_age` varchar(500) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `no_couple` varchar(52) NOT NULL,
  `user_contact` varchar(200) NOT NULL,
  `user_loaction` varchar(100) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `event_details` varchar(999) NOT NULL,
  `amount` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_upcoming_event`
--

INSERT INTO `book_upcoming_event` (`id`, `user_name`, `user_age`, `user_email`, `no_couple`, `user_contact`, `user_loaction`, `nationality`, `event_details`, `amount`) VALUES
(18, '', '21', 'kesri.sk@gmail.com', '1', '8909456321', 'room no. 10, shastri bhawan, GBPUAT, pantnagar', 'India', 'Nainital 13,14 Feb 18', '6998'),
(3, 'Gsha', '', 'jzaj@xjsj.sjs', '1', '787878787878', 'Shzh', 'India', '', ''),
(4, 'gautam', '22', 'grs@fmasklf.com', '1', '997719767', 'delhi', 'india', 'Nainital 13,14 Feb 18', ''),
(5, '', '21', 'jaiprakashshah828@gmail.com', '1', '8909456321', 'room no. 10, shastri bhawan, GBPUAT, pantnagar', 'India', 'Nainital 13,14 Feb 18', '7998'),
(6, '', '21', 'kesri.sk@gmail.com', '1', '8909456321', 'room no. 10, shastri bhawan, GBPUAT, pantnagar', 'India', 'Nainital 13,14 Feb 18', '1'),
(7, '', '21', 'cs@fd', '1', 'Cd', 'Cd', 'Gfgf', 'Nainital 13,14 Feb 18', '1'),
(8, '', '21', 'kesri.sk@gmail.com', '1', '8909456321', 'room no. 10, shastri bhawan, GBPUAT, pantnagar', 'India', 'Nainital 13,14 Feb 18', '1'),
(15, '', '19', 'rishantverma@gmail.com', '1', '8076544323', 'Kashipur', 'Indian', 'Nainital 13,14 Feb 18', '7998'),
(16, '', '19', 'amanrawat1209@gmail.com', '1', '9720847392', 'uttakashi ', 'indian ', 'Nainital 13,14 Feb 18', '7998'),
(11, '', '21', 'kesri.sk@gmail.com', '2', '8909456321', 'room no. 10, shastri bhawan, GBPUAT, pantnagar', 'India', 'Nainital 13,14 Feb 18', '15996'),
(17, '', '19', 'amanrawat1209@gmail.com', '1', '9720847392', 'uttakashi ', 'indian ', 'Nainital 13,14 Feb 18', '7998'),
(13, '', '21', 'kesri.sk@gmail.com', '1', '8909456321', 'room no. 10, shastri bhawan, GBPUAT, pantnagar', 'India', 'Nainital 13,14 Feb 18', '7998'),
(14, '', '20', 'jaiprakashshah35@gmail.com', '1', '90580148', 'dehradun', 'indian', 'Nainital 13,14 Feb 18', '7998'),
(19, '', '21', 'kesri.sk@gmail.com', '1', '8909456321', 'room no. 10, shastri bhawan, GBPUAT, pantnagar', 'India', 'Nainital 13,14 Feb 18', '3499'),
(20, '', '21', 'kesri.sk@gmail.com', '4', '8909456321', 'room no. 10, shastri bhawan, GBPUAT, pantnagar', 'India', 'Nainital 13,14 Feb 18', '12996'),
(21, '', '21', 'gautamrajeshshelley@gmail.com', '3', '9927719767', 'NEAR RELIANCE PETROL PUMP, KHATIMA ROAD', 'India', 'Nainital 13,14 Feb 18', '10497'),
(22, '', '21', 'gautamrajeshshelley@gmail.com', '4', '9927719767', 'NEAR RELIANCE PETROL PUMP, KHATIMA ROAD', 'India', 'Nainital 13,14 Feb 18', '12996'),
(23, '', '22', 'abcd@gmail.com', '1', '7646358974', 'Cuttack, odhisa', 'India', 'Nainital 13,14 Feb 18', '3499'),
(24, '', '22', 'abcd@gmail.com', '1', '7646358974', 'Cuttack, odhisa', 'India', 'Nainital 13,14 Feb 18', '3499'),
(25, '', '24', 'gauravnanda175@gmail.com', '2', '8826243667 ', 'A 921', 'Indian ', 'Nainital 13,14 Feb 18', '6998');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_message` text NOT NULL,
  `profile_id` int(50) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_name`, `user_email`, `user_message`, `profile_id`, `date`) VALUES
(12, 'demo', 'demo@aa', 'hello', 6, '2017/11/22'),
(14, 'shivam', 'kesarwani@gmail.com', 'this is demo', 5, '2017/11/22'),
(15, 'kadfk', 'lakshaysaini2013@gmail.com', 'sdfsdfsd', 4, '2017/12/01'),
(16, 'lakshy', 'asjdf@gmail.com', 'askdlfj asdkfjl asdfj lkasdf kajs dfas ', 10, '2017/12/05'),
(17, 'lasdkj', 'asdkf@gmail.com', 'asdjkfasd asfj as\r\n', 10, '2017/12/05'),
(18, 'Rajat singh', 'raj123@gamil.com', 'nice guide', 12, '2017/12/20'),
(19, 'Bharti chawda', 'bhartichawda7@gmail.com', 'I love this person as a trek leader.\r\nHe is an amzing trek leader as well as a fun loving person.\r\nI had done my first trek of himalayas i.e at kedarkantha wid him.\r\nI thot i will never be able to do this, but he kept motivating me all through the journey.\r\nI had the best time of my life in this trek wid the entire team.\r\nThe way pachu lead the entire team keeping in mind evrybodys needs.\r\n', 29, '2017/12/30'),
(20, 'Pratik inamdar', 'pratiksinamdar@gmail.com', 'Talented leader.', 29, '2017/12/30'),
(21, 'rahul', 'dudejack69@gmail.com', 'i want to book this guy for uttarakhand tour', 51, '2018/01/14'),
(22, 'Sakshi ', 'shikhantl2016@gmail.com', 'Want to Book this cool Guy for tour please send details ', 51, '2018/01/15');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(100) NOT NULL,
  `contactName` varchar(500) NOT NULL,
  `contactEmail` varchar(500) NOT NULL,
  `contactSubject` varchar(1000) NOT NULL,
  `contactMessage` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `contactName`, `contactEmail`, `contactSubject`, `contactMessage`) VALUES
(3, 'Madan Rana ', 'ranamadan295@gmail.com ', 'Trekking and rafting guide', 'All of Uttarakhand and Himachal tour operator. 9410559511 '),
(4, 'devanand thakur', 'nand.deva18@rediffmail.com', 'owner  treking agency and Guide', ' hello i can guide all trek in manali  '),
(5, 'Urmila rawat', 'Urmilarawat74@gmail.com', 'Trekking camping ', ''),
(6, 'mohan thakur', 'mohanimshanti@gmail.cim', '', 'keep &amp; clean Himalaya,s'),
(7, 'Sapna shrestha', 'Shresthsapana078@gmail.com', 'Nepal explore ', 'Hi every one this me sapna from nepal.every people have thier one choice for travel and yes nepal is one of them best destination so we are here for your helping you how to explore nepal..'),
(8, 'surendra Rawat Uttarakhand Uttarkashi Har ki WhatsApp number 9411340031', 'surendrrawat9411@gmail.com', 'taking', ''),
(9, 'surendra rawat', 'surendrrawat9411@gmail.com', ' ', '9411340031'),
(10, 'surendra rawat Uttarakhand Uttarkashi har ki doon', 'surendrrawat24@gmail.com', 'Uttarakhannd Gaid', '9411340031\r\nsurendra Rawat\r\n'),
(11, 'MEGH RAJ PANWAR', 'Garhwaltrekguide@gmail.com', 'Trekking guide', 'UK and Hp '),
(12, 'MEGH RAJ PANWAR', 'Garhwaltrekguide@gmail.com', 'Trekking guide', 'UK and Hp '),
(13, 'Ravi singh', 'Ravi.tajmahalagra@gmail.com ', 'English and French speaking ', 'I would like to join ur guidevilla dear'),
(14, 'lokesh', 'lokeshrana2012@gmail.com', '', ''),
(15, 'lokesh rana', 'lokeshrana2012@gmail.com', '', ''),
(16, 'lokesh rana', 'lokeshrana2012@gmail.com', 'guid', ''),
(17, '', '', '', ''),
(18, 'Indra Kumar Rai ', 'Indrarai61@hotmail.com ', 'Trek /tour leader Nepal ', 'I have working  last 15 year tourism  leading a trek / tour in the Himalayas  , please if you are looking for Nepal trek / tour leader you can touch me ,  \r\n+977-9841617076\r\n+977-014435870'),
(19, 'lokesh rana', 'lokeshrana2012@gmail.com', 'tour&amp;tracking guide', 'Mob 7500909967'),
(20, 'lokesh rana', 'lokeshrana2012@gmail.com', 'tour&amp;track guid', ''),
(21, 'lokesh rana', 'lokeshrana2012@gmail.com', 'tour&amp;track guid', ''),
(22, 'lokesh', 'lokeshrana2012@gmail.com', 'guid', 'Mob 7500909967\r\n'),
(23, 'lokesh', 'lokeshrana2012@gmail.com', 'guid', '7500909967'),
(24, 'FOOT SLOPES TOURS &amp; SAFARIS', 'footslopestours@gmail.com', 'We are looking for working together in business partnership ', 'Dear Sir/Madam,\r\n\r\nWe are safari company operating in Tanzania we are looking for working together in business partnership\r\n\r\nWe find your information on Google searching engine and interesting working together\r\n\r\nWe offer and organized all safari program ranging from Day tour, Private tour, Join group tour , Student tour, Family tour, Wildlife and game drive tour, Mountain climbing expeditions, Camping &amp; luxury safaris, Hills Trekking, Bird watching, Cultural tourism, Walking safaris, Photography tour, Beach holidays, Honey moon, small &amp; large group tour, both camping &amp; executives itineraries pay great attention to every detail for a traveler, just to ensure he/she carries pleasant memories of the tour and also the company.\r\n\r\nWe are looking forwards to hear from you soon in positive reply\r\n\r\nWith kindly regards\r\n\r\nTeam\r\n\r\nFoot Slopes Tours &amp; Safaris\r\n\r\nhttp://www.footslopestours.com\r\n\r\n24/7 Customer Support\r\n\r\nSkype:  foot.slopes\r\n\r\n+255745504340'),
(25, 'Mr.Pramod rana', 'rpramod864@gmail.com', 'trekking campaign at mountaion', 'Dear sir I\'m mountain guid from garwhal Himalayan uttarakhand India \r\nOur most trek in uttarkashi\r\nHarkidun valley\r\nKedarkantha trek \r\nRupin pass trek\r\nRupin and supin valley trek\r\nObra valley devkyary medown trek\r\nBharadsar lake trek\r\n'),
(26, 'Mr.Pramod rana', 'rpramod864@gmail.com', 'trekking campaign at mountaion', 'Dear sir I\'m mountain guide from uttarakhand garwhal himalayan'),
(27, 'shivam kesarwani', 'kesri.sk@gmail.com', 'test', 'test'),
(28, 'Mr.Pramod rana', 'rpramod864@gmail.com', 'trekking campaign at mountaion', 'I\'m mountain guide garwhal himalayan uttarakhand'),
(29, 'Mr.Pramod rana', 'rpramod864@gmail.com', 'trekking campaign at mountaion', 'I\'m mountain guide garwhal himalayan uttarakhand'),
(30, 'Mr.Pramod rana', 'rpramod864@gmail.com', 'trekking campaign at mountaion', 'I\'m mountain guide garwhal himalayan uttarakhand'),
(31, 'Pramod rana ', 'rpramodsingh@864.com ', 'I\'m mountain guide fore uttarakhand', 'Dear sir I\'m pramod rana mountain guide uttarakhand '),
(32, 'Madan Rana ', 'ranamadan295@gmail.com ', 'Trekking and rafting guide', 'Good value for your time '),
(33, 'shivam kesarwani', 'kesri.sk@gmail.com', 'demo', 'demo'),
(34, 'Alex Cruz', 'alex-cruz@marketing.co', 'Hello,', ''),
(35, 'visam panwar ', 'mountainguideuk@gmail.com ', 'Guide in uttrakhand and himanchal ', 'I am visam from uttarkashi uttrakhand Work at mountain guide student at Nehru institut of moutarneenig uttarkashi uttrakhand \r\n I have 4year experience in mountain routes and trekking ');

-- --------------------------------------------------------

--
-- Table structure for table `guide_table`
--

CREATE TABLE `guide_table` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide_table`
--

INSERT INTO `guide_table` (`id`, `name`, `email`, `password`) VALUES
(1, 'asd', 'sda@qw.c', '728a829662386b98908dea1ad3d7c68f'),
(2, 'asd', 'sda@qw.c', '728a829662386b98908dea1ad3d7c68f'),
(3, 'ads', 'asd@dsa.c', '325cff610818f8fe73563b989327b8c6'),
(4, 'ad', 'dsa@asd.c', '3e9fecefe6a2ccd6cb29798aa8dd1307'),
(5, 'ads', 'ad@ads.c', '905b684ad7302df4c1f836840bb3a37c');

-- --------------------------------------------------------

--
-- Table structure for table `join_team`
--

CREATE TABLE `join_team` (
  `id` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `uplace` varchar(150) NOT NULL,
  `uemail` varchar(150) NOT NULL,
  `ucontact` varchar(150) NOT NULL,
  `verify` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `join_team`
--

INSERT INTO `join_team` (`id`, `uname`, `uplace`, `uemail`, `ucontact`, `verify`) VALUES
(12, 'himanshu joshi', 'haldwani', 'himajos@gmail.com', '7834022686', '715935942193'),
(13, 'Abdul Khan', 'Jaigaon', 'indiabhutantour@gmail.com', '+919733133972', '229751990025'),
(14, 'Mountain guide Pemba Sherpa ', 'Nepal ', 'mountainguidepemba@gmail.com', '00977-9841953829', '00977-9841953829'),
(15, 'Habibu Manjare', 'Tanzania', 'habibusalim@yahoo.com', '+255693477850 / +255756870202', 'KG 910'),
(16, 'Ravi singh ', 'Agra', 'ravi.tajmahalagra@gmail.com', '09927465399', '339190567769'),
(17, 'Ratnash panwar', 'Joshimath', 'singhratnash49561@gmail.com', '8568495300', '825801292895'),
(18, 'Ratnash panwar', 'Joshimath', 'singhratnash49561@gmail.com', '8568495300', '825801292895'),
(19, 'Ratnash panwar', 'Joshimath', 'singhratnash49561@gmail.com', '8568495300', '825801292895'),
(20, 'Ashish panwae ', 'Auli jishimath', 'panwarashish39@gmail.com', '08650607331', '830573179193'),
(21, 'Ratnash panwar', 'Joshimath', 'singhratnash49561@gmail.com', '8568495300', '825801292895'),
(22, 'Ali', 'Nainital', 'nainitalbikers@gmail.com', '9719719117', '896061845869'),
(23, 'Wriju Bhaduri', 'Himalayas', 'bwriju94@gmail.com', '7890545633', '631852893971'),
(24, 'lokesh rana', 'joshimath uttrakhand', 'lokeshrana2012@gmail.com', '7500909967', '452393493978'),
(25, 'lokesh rana', 'joshimath uttrakhand', 'lokeshrana2012@gmail.com', '7500909967', '452393493978'),
(26, 'INDRA KUMA RAI ', 'NEPAL', 'indrarai61@hotmail.com', '+9841617076/ +977-014435870', '+9841617076'),
(27, 'Arup Chowdhury', 'Kolkata', 'arup1981@gmail.com', '9831594205', '564546335500'),
(28, 'Gideon Stapelberg', 'South Africa', 'info@tofo.co.mz', '+27814385511', 'MP1895'),
(29, 'issa', 'Musanze - Rwanda', 'bookgorillatrek@gmail.com', '+250785388028', '333444666'),
(30, 'Jagadish Nivruti bande ', 'Samrad, tal akole dist Ahmednagar, state maharashtra', 'jagadishbande1987@gmail.com', '9595857546', '368199300576'),
(31, 'Naseer Ahmad Malik', 'Kashmir', 'naseermalik467@gmail.com', '+917006175329', '239459067879'),
(32, 'Kashi Khatri', 'UTTRAKHAND', 'climberksshi1994@gma.com', '07055338595', '867084176468'),
(33, 'Karan parkhiya ', 'Gondal, rajkot ', 'karan.parkhiya@gmail.com', '9427159825', '776327720740'),
(34, 'Vimal Dineshbhai Shah', 'Bhuj', 'shahvimal59@gmail.com', '9978382038', '347884967898'),
(35, 'Sheetal Larjey ', 'Kullu', 'sheetal.laharje27@gmail.com', '8894683227 ', '315244182421'),
(36, 'Saurabh bijalwan', 'Haldwani', 'saurabhbijalwa96@gmail.com', '8191940643', '531154327654'),
(37, 'Madan Rana ', 'Harkidun osla ', 'ranamadan295@gmail.com', '9410559511 ', '292288898107'),
(38, 'Irfan Mir', 'Kashmir', 'Ifanmir28@gmail.com', '+918491004833 ', '394973253301');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `guide_id` varchar(100) NOT NULL,
  `package_name` varchar(500) NOT NULL,
  `guide_price` varchar(500) NOT NULL,
  `our_price` varchar(500) NOT NULL,
  `no_days` varchar(500) NOT NULL,
  `pickup_location` varchar(500) NOT NULL,
  `drop_location` varchar(500) NOT NULL,
  `transport` varchar(500) NOT NULL,
  `food` varchar(500) NOT NULL,
  `accomodation` varchar(500) NOT NULL,
  `extra_service` varchar(500) NOT NULL,
  `category` varchar(500) NOT NULL,
  `guide_service` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `guide_id`, `package_name`, `guide_price`, `our_price`, `no_days`, `pickup_location`, `drop_location`, `transport`, `food`, `accomodation`, `extra_service`, `category`, `guide_service`) VALUES
(2, '13', 'Exploring Agra', '1600', '1899', '1D', 'Agra', 'Agra', 'no', 'no', 'no', 'none', 'historic', 'yes'),
(3, '15', 'Kedarkantha Trek', '7500', '8250', '6Days 5Night', 'Dehradun', 'Dehradun', 'yes', 'yes', 'yes', 'Camp Stay', 'trekking', 'yes'),
(4, '15', 'Har kiDoon Trek', '9500', '9750', '7Days 6Night', 'Dehradun', 'Dehradun', 'yes', 'yes', 'yes', 'Camp Stay', 'trekking', 'yes'),
(5, '15', 'Maldaru Lake Trek', '18000', '19500', '8Days 7Night', 'Dehradun', 'Dehradun', 'yes', 'yes', 'yes', 'Camp Stay', 'trekking', 'yes'),
(6, '15', 'RoopKund Trek', '10599', '10899', '8Days 7Night', 'Lohajung', 'Lohajung', 'yes', 'yes', 'yes', 'Camp Stay', 'trekking', 'yes'),
(23, '16', 'Black Peak Expedition', '70000', '75000', '15Days14Night', 'Dehradun', 'Dehradun', 'yes', 'yes', 'yes', 'Camp stay', 'trekking', 'yes'),
(8, '66', 'Delhi-Agra Tour', '2250', '2650', '1', 'Delhi/Agra', 'Delhi/Agra', 'yes', 'yes', 'yes', '', 'historic', 'yes'),
(13, '68', 'Varanasi Tour', '2270', '2700', '1DAY', 'Varanasi', 'Varanasi', 'no', 'no', 'no', '', 'historic', 'yes'),
(14, '68', 'Evening Ceremony In Varanasi', '1970', '2350', '1DAY', 'Varanasi', 'Varanasi', 'no', 'no', 'no', '', 'historic', 'yes'),
(12, '68', 'Sarnath Tour', '1600', '1900', '1DAY', 'Varanasi', 'Varanasi', 'no', 'no', 'no', '', 'historic', 'yes'),
(32, '57', 'Everest Base Camp Trek', '1500 USD', '1775 USD', '15 Days', 'Kathmandu', 'Kathmandu', 'yes', 'yes', 'yes', '', 'trekking', 'yes'),
(17, '30', 'Hamta Pass Trek', '8500', '9250', '5Days4Night', 'Manali', 'Manali', 'yes', 'yes', 'yes', 'Camp stay', 'trekking', 'yes'),
(18, '30', 'Dev Tibba', '7500', '8250', '5Days4Night', 'Manali', 'Manali', 'yes', 'yes', 'yes', 'Camp stay', 'trekking', 'yes'),
(19, '30', 'Hampta Circulate Trek', '4500', '6500', '3Days4night', 'Manali', 'Manali', 'yes', 'yes', 'yes', 'Camp stay', 'trekking', 'yes'),
(20, '30', 'Malana Trek', '7500', '7750', '4Days3Night', 'Manali', 'Manali', 'yes', 'yes', 'yes', 'Camp stay', 'trekking', 'yes'),
(21, '30', 'Pin Valley Trek', '24000', '24500', '10Days', 'Manali', 'Manali', 'yes', 'yes', 'yes', 'Camp stay', 'trekking', 'yes'),
(22, '18', 'Har ki Doon Trek', '8000', '9500', '7Days6Night', 'Dehradun', 'Dehradun', 'yes', 'yes', 'yes', 'Camp stay', 'trekking', 'yes'),
(24, '16', 'Roopkund Trek', '95000', '10750', '7Days6Night', 'Haridwar', 'Haridwar', 'yes', 'yes', 'yes', 'Camp stay', 'trekking', 'yes'),
(25, '16', 'Ruinsara Taal Trek', '12000', '13500', '7Days6Night', 'Dehradun', 'Dehradun', 'yes', 'yes', 'yes', 'Camp stay', 'trekking', 'yes'),
(26, '16', 'Bali Pass', '15000', '16500', '9Days', 'Dehradun', 'Dehradun', 'yes', 'yes', 'yes', 'Camp stay', 'trekking', 'yes'),
(27, '16', 'Borasu Pass', '20000', '21500', '9Days', 'Dehradun', 'Dehradun', 'yes', 'yes', 'yes', 'Camp stay', 'trekking', 'yes'),
(28, '67', 'Jodhpur Half Day Tour', '1600', '1900', '1DAY', 'Jodhpur', 'Jodhpur', 'no', 'no', 'no', '', 'historic', 'yes'),
(29, '67', 'Jodhpur Full Day Tour', '2000', '2400', '1DAY', 'Jodhpur', 'Jodhpur', 'no', 'no', 'no', '', 'historic', 'yes'),
(30, '19', 'Calcutta Tour', '2000', '2400', '1 DAY', 'Calcutta', 'Calcutta', 'no', 'no', 'no', '', 'historic', 'yes'),
(31, '19', 'Sikkim Tour', '40000', '47250', '5 Days', 'Bagdogra or New Jalpai Guri', 'Bagdogra or New Jalpai Guri', 'yes', 'yes', 'yes', '', 'historic', 'yes'),
(33, '57', 'Everest Base Camp Trek via Gokyo Lakes', '1700 USD', '2000 USD', '18 Days', 'Kathmandu', 'Kathmandu', 'yes', 'yes', 'yes', '', 'trekking', 'yes'),
(34, '19', 'Bhutan Tour', '20000', '23750', '7 Days', 'Bagdogra or New Jalpai Guri', 'Bagdogra or New Jalpai Guri', 'yes', 'yes', 'yes', '', 'historic', 'yes'),
(35, '19', 'Kasol-Tosh-Kheerganga Tour', '7000', '8250', '4 Days', 'Kasol ', 'Kasol', 'yes', 'yes', 'yes', '', 'trekking', 'yes'),
(36, '19', 'Ladakh Tour', '25000', '29500', '7 Days', 'Leh City, Ladakh', 'Manali, Himachal Pradesh', 'yes', 'yes', 'yes', '', 'historic', 'yes'),
(37, '19', 'Spiti Tour', '18000', '21250', '7 Days', 'Manali', 'Manali', 'yes', 'yes', 'yes', '', 'trekking', 'yes'),
(38, '19', 'RoopKund Trek', '8500', '10000', '7 Days', 'Lohajung', 'Lohajung', 'yes', 'yes', 'yes', '', 'trekking', 'yes'),
(39, '19', 'Kashmir Tour', '20000', '23750', '7 Days', 'Jammu or Srinagar', 'Jammu or Srinagar', 'yes', 'yes', 'yes', '', 'historic', 'yes'),
(40, '69', 'Bandarpoonch Expedition', '50000', '58850', '19 Days', 'Dehradun', 'Dehradun', 'yes', 'yes', 'yes', '', 'trekking', 'yes'),
(41, '69', 'Black Peak Expedition', '45000', '52950', '16 Days', 'Dehradun', 'Dehradun', 'yes', 'yes', 'yes', '', 'trekking', 'yes'),
(42, '69', 'Stok Kangri Expedition', '25000', '29500', '7 Days', 'Leh City, Ladakh', 'Leh City, Ladakh', 'yes', 'yes', 'yes', '', 'trekking', 'yes'),
(43, '29', 'RoopKund Trek', '9000', '10599', '6', 'Kathgodam', 'Kathgodam', 'yes', 'yes', 'yes', '', 'trekking', 'yes'),
(44, '29', 'Brahmatal Trek', '9000', '10599', '5 Days', 'Kathgodam', 'Kathgodam', 'yes', 'yes', 'yes', '', 'trekking', 'yes'),
(45, '29', 'Valley Of Flower Tour', '8000', '9450', '5', 'Haridwar', 'Haridwar', 'yes', 'yes', 'yes', '', 'trekking', 'yes'),
(46, '29', 'Triund Trek', '2000', '2400', '2', 'Mcleodganj', 'Mcleodganj', 'yes', 'yes', 'yes', '', 'trekking', 'yes'),
(47, '29', 'Kedarkantha Trek', '9000', '10599', '6 Days', 'Dehradun', 'Dehradun', 'yes', 'yes', 'yes', '', 'trekking', 'yes'),
(48, '33', 'Chandernahan Trekking', '12000', '14199', '6 Days', 'Shimla', 'Shimla', 'yes', 'yes', 'yes', '', 'trekking', 'yes'),
(49, '51', 'Valentine\'s  Day Special', '4000', '3999', '2Days1Night', 'Haldwani', 'Haldwani', 'yes', 'yes', 'yes', 'Camping,Lake tour', 'trekking', 'yes'),
(50, '73', 'Har Ki Doon', '9000', '10599', '7', 'Dehradun', 'Dehradun', 'yes', 'yes', 'yes', '', 'trekking', 'yes'),
(51, '73', 'Bali Pass', '18000', '21199', '9 Days', 'Dehradun', 'Dehradun', 'yes', 'yes', 'yes', 'Indian and Italian Food', 'trekking', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `querry`
--

CREATE TABLE `querry` (
  `id` int(150) NOT NULL,
  `uname` varchar(520) NOT NULL,
  `uemail` varchar(500) NOT NULL,
  `ucontact` varchar(500) NOT NULL,
  `uquery` text NOT NULL,
  `event_details` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `querry`
--

INSERT INTO `querry` (`id`, `uname`, `uemail`, `ucontact`, `uquery`, `event_details`) VALUES
(3, 'Gaurav ', 'gauravnanda175@gmail.com', '8826243667 ', 'Is there any special discount for couples.? ', 'nainital Valentine\'18');

-- --------------------------------------------------------

--
-- Table structure for table `request_proposals`
--

CREATE TABLE `request_proposals` (
  `proposal_id` int(5) NOT NULL,
  `guide_id` int(5) NOT NULL,
  `request_id` int(5) NOT NULL,
  `proposal_text` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_proposals`
--

INSERT INTO `request_proposals` (`proposal_id`, `guide_id`, `request_id`, `proposal_text`) VALUES
(1, 15, 42, 'I am ready to take your tours'),
(2, 16, 42, 'asdadsadasdasasdadsadasdasasdadsadasdasasdadsadasdasasdadsadasdasasdadsadasdasasdadsadasdasasdadsadasdasasdadsadasdas');

-- --------------------------------------------------------

--
-- Table structure for table `request_status`
--

CREATE TABLE `request_status` (
  `status_id` int(5) NOT NULL,
  `request_id` int(5) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_status`
--

INSERT INTO `request_status` (`status_id`, `request_id`, `status`) VALUES
(1, 42, '1'),
(2, 43, '0'),
(3, 44, '2');

-- --------------------------------------------------------

--
-- Table structure for table `tour_guide`
--

CREATE TABLE `tour_guide` (
  `id` int(11) NOT NULL,
  `guide_name` varchar(50) NOT NULL,
  `guide_place` varchar(300) NOT NULL,
  `design_img` text NOT NULL,
  `guide_email` varchar(200) NOT NULL,
  `guide_language` text NOT NULL,
  `guide_description` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `guide_gst` varchar(50) NOT NULL,
  `guide_category` varchar(50) NOT NULL,
  `avg_rating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_guide`
--

INSERT INTO `tour_guide` (`id`, `guide_name`, `guide_place`, `design_img`, `guide_email`, `guide_language`, `guide_description`, `date_created`, `guide_gst`, `guide_category`, `avg_rating`) VALUES
(13, 'Mr   Shahnawaz', 'Agra', '283377shahnawaz-khan-1.jpg', 'msk_guide@yahoo.com', 'Hindi, English', 'Tour Manager/ Tour Guide ', '2017-12-20 14:19:45', '', 'historic', 0),
(15, ' Mr Vijay ', 'Uttarakhand', '71945IMG-20171120-WA0003.jpg', 'vijaytrekguide@gmail.com', 'Hindi, English', 'Uttarakhand based guide with an experience of guiding since 3 years.', '2017-12-21 02:56:00', '', 'treking', 0),
(16, ' Mr Ganga ', 'Uttarakhand', '607175IMG-20171223-WA0003.jpg', 'gangasingh4596@gmail.com', 'Hindi, English', 'Tour Guide in Uttarakhand. Pledging to give you better and explored version of a tour.', '2017-12-23 13:28:28', '', 'treking', 0),
(17, ' Mr Bhargab ', 'North-East India', '628757IMG-20171223-WA0004.jpg', 'skybizmike@gmail.com', 'Hindi, English', 'Well experienced in trekking and mountaineering. ', '2017-12-24 08:51:49', '', 'treking', 0),
(18, ' Mr Prakash', 'Uttarakhand ', '988899IMG-20171224-WA0000.jpg', 'prakashrana0012@gmail.com', 'Hindi, English', 'With a thumping experience of 7 years, I\'m to ease your tour. ', '2017-12-24 08:56:11', '', 'treking', 0),
(19, ' Mr Deep', 'Kolkata, Himalayas, Bhutan', '550079IMG-20171225-WA0002.jpg', 'dbiswas.kolkata15@gmail.com', 'Hindi, English', 'Namaste , I am a freelance certified tour guide and a licensed mountaineer from India. I have been helping people to see and make memories for 5 years now. More than trips , I offer experiences that changes your life. Of the memories and smiles I have served , includes renowned photographers from Nat Geo , Discovery and Lonely planet, who comes with me to see the wonders of Himalayas and Kolkata. More than proffesion, I am a traveler and wanderer myself , which is why I chose this life to make other people happy with travel memories.\r\n In summers I am based in Kasol , Himachal, while in winter I operate from Kolkata due to the rush and quantity of work. \r\nFrom treks and expeditions in mountains, backpacking trips and cultural tours and heritage though out length and breadth of Himalayas and Calcutta, I can be your companion. I don\'t run any tour company and I am recognised as individual only.\r\nI also operate in Bhutan and Nepal for Indian travellers only.\r\n', '2017-12-25 07:19:59', '', 'historic', 0),
(20, ' Mr Arvind ', 'Uttarakhand ', '506866Arvind_Guide_20171225_133339.jpg', 'singharvind428@gmail.com', 'Hindi, English ', 'Guiding tourists with an experience of almost 7 \r\nyears', '2017-12-25 08:19:38', '', 'treking', 0),
(26, ' Mr Pradeep ', 'Uttarakhand ', '654182IMG-20171227-WA0000.jpg', 'uniyalsurya22hot@gmail.com', 'Hindi, English ', '3 years experience ', '2017-12-27 03:36:46', '000', 'treking', 0),
(27, ' Mr Suman ', 'Himalayas ', '630621image1.JPG', 'trekandflyhimalayas@gmail.com', 'Hindi, English', 'Raid the Himalayas with an experienced fellow', '2017-12-29 06:36:52', '00', 'treking', 0),
(29, 'Mr Shetty', 'Himalayas  ', '643456IMG-20171230-WA0000.jpg', 'pachu.v41@gmail.com', 'Hindi, English, Kannada, Marathi', 'Experienced in cycling as well as mountaineering.', '2017-12-30 07:21:25', '1111', 'treking', 0),
(30, ' Mr Dev  ', 'Himachal Pradesh ', '454773IMG-20171230-WA0002.jpg', 'devanand201982@gmail.com', 'Hindi, English', 'Well-experienced in mountaineering too. ', '2017-12-30 08:18:14', '123', 'treking', 0),
(31, 'Mr Yadav', 'Varanasi ', '826236IMG-20171230-WA0007.jpg', 'Piyush_vns2012@yahoo.com', 'Hindi, English', 'Well experienced tour guide, ready to let you explore Varanasi.', '2017-12-30 10:48:32', '1234', 'historic', 0),
(33, '  Mr Rahul ', 'Himachal Pradesh ', '377961IMG-20171230-WA0011.jpg', 'rahuldogra1p@gmail.com', 'Hindi, English', 'Experienced in mountaineering as well as skiing.', '2017-12-30 17:12:02', '1256', 'treking', 0),
(34, ' Mr Vishal ', 'West Bengal ', '220744IMG_20171230_234100.jpg', 'mevishaltrivedi@gmail.com', 'Hindi, English, Bengali', 'Young blood with a promise to ease your tour. ', '2017-12-30 18:12:08', '1236', 'historic', 0),
(35, ' Miss Pinal ', 'Himalayas ', '147198IMG-20171231-WA0000.jpg', 'pinal.parlekar@gmail.com', 'Hindi, English, Gujarati', 'Well experienced in mountaineering.', '2017-12-31 14:38:17', '1356', 'treking', 0),
(36, ' Mr Kuldeep ', 'Himachal Pradesh ', '731467IMG_20180101_113122.JPG', 'kldpkumar85@gmail.com', 'Hindi, English ', 'Ready to guide you in the lap of beautiful mountains.', '2018-01-01 06:02:07', '1726', 'treking', 0),
(37, ' Mr Manodip ', 'Maharashtra ', '823521IMG_20180101_150655.JPG', 'manodeep11@yahoo.com', 'Hindi, English, Marathi', 'Travelling is not just a fun  but adventure in itself. Stay positive for everything that comes in. Keep exploring!!', '2018-01-01 09:38:40', '1354', 'historic', 0),
(38, ' Miss Urmila Rawat ', 'Uttarakhand and Himachal Pradesh ', '888281IMG_20180101_154614.JPG', 'urmilarawat74@gmail.com', 'Hindi, English', 'Equipped with experience as well as trust. ', '2018-01-01 10:13:38', '1569', 'treking', 0),
(39, ' Mr Mohan ', 'Himachal Pradesh ', '333214IMG-20180103-WA0003.jpg', 'Mohanomshanti@gmail.com', 'Hindi, English', 'Experience the beauty of Himachal Pradesh with me.', '2018-01-03 05:18:34', '1354', 'treking', 0),
(40, ' Mr K. Sivakumar', 'Puducherry /Auroville & Thiruvanamalai. ', '750223x2_Facebook_-_Copy.jpg', 'sivbuv@gmail.com', 'English', 'Personal Tour Guide', '2018-01-03 07:49:10', '1346', 'historic', 0),
(41, ' Mr Dhan ', 'Uttarakhand', '342974IMG-20180103-WA0009.jpg', 'dhansinghindiahikes@gmail.com', 'Hindi, English', 'Come to our homeland- The land of God', '2018-01-03 10:30:54', '543', 'treking', 0),
(42, 'Mr Gautam', 'Himachal Pradesh', '110679IMG-20180103-WA0018.jpg', 'kirnu21488@gmail.com', 'Hindi, English', 'Well experienced to guide you through the beautiful mountains', '2018-01-04 04:33:48', '1367', 'treking', 0),
(43, 'Mr Naval', 'Uttarakhand', '508234IMG-20180106-WA0006.jpg', 'Navalsinghdanu@gmail.com', 'Hindi, English', 'May the mountain gods always be with you.', '2018-01-04 10:31:40', '1346', 'treking', 4.7),
(44, ' Mr Tanveer ', 'Kashmir Valley', '589122IMG-20180104-WA0000.jpg', 'gr8himalayaexplore@gmail.com', 'Hindi, English', 'Explore the beautiful Kashmir Valley with me.', '2018-01-04 15:34:35', '1389', 'treking', 4.5),
(45, ' Mr Pemba ', 'Nepal', '111382IMG-20180105-WA0004.jpg', 'mountainguidepemba@gmail.com', 'Hindi, English', 'Guiding you through the world\'s best summits.', '2018-01-05 04:25:25', '1387', 'treking', 4.2),
(46, ' Mr Sudipto ', 'Indian Himalayas', '90193IMG-20180105-WA0008.jpg', 'sudh1985@gmail.com', 'Hindi, English', 'Explore the unclimbed peaks with me.', '2018-01-05 14:23:35', '1394', 'treking', 0),
(48, ' Mr Ravi ', 'Agra', '242244IMG-20180109-WA0003.jpg', 'ravi.tajmahalagra@gmail.com', 'Hindi, English, French', 'Get yourself into the beauty of ecstatic medieval beauty- "Agra" with me.', '2018-01-09 10:46:37', '1448', 'historic', 0),
(49, 'Mr Rajesh', 'Uttarakhand', '99982IMG-20180110-WA0007.jpg', 'singhratnesh49561@gmail.com', 'Hindi, English', 'Experience the breath taking beauties of The Himalayas.', '2018-01-10 20:10:31', '1140', 'treking', 0),
(50, ' Mr Ashish ', 'Uttarakhand', '431203IMG-20180111-WA0001.jpg', 'panwarashish39@gmail.com', 'Hindi, English', 'Well experienced in conducting adventure trips.', '2018-01-11 09:04:45', '1887', 'treking', 0),
(51, ' Mr Ali', 'Uttarakhand', '488571IMG-20180111-WA0004.jpg', 'nainitalbikers@gmail.com', 'Hindi, English', 'Working as a professional Tour Guide since many years.Ali has all the experiences that it takes to lead and guide a group of Tourists.With complete knowledge of his native place .Ali has an enormously humble bahaviour with his Tourists.This young Guide can be your perfect option to experience an unforgettable Trip of Uttarakhand.', '2018-01-11 16:55:46', '1667', 'treking', 0),
(52, ' Mr Wriju', 'Himalayas', '93162IMG-20180111-WA0005.jpg', 'bwriju94@gmail.com', 'Hindi, English', 'Experience the exceptional tours.', '2018-01-11 17:30:28', '1449', 'treking', 0),
(53, ' Mr Jyoti Prakash ', 'Nepal', '855503IMG-20180112-WA0002.jpg', 'jyotiprakashrai17@gmail.com', 'Hindi, English', 'Guiding the vagabonds since 2007. Explore the beauty of mountains with me.', '2018-01-12 09:35:01', '1364', 'treking', 0),
(54, ' Mr Rajat ', 'North-East India', '734048IMG-20180114-WA0005.jpg', 'rajat1491@gmail.com', 'English, Hindi', 'Experience the ecstatic beauty of North East India with me.', '2018-01-14 16:08:31', '1440', 'historic', 0),
(55, ' Mr Javaid ', 'Kashmir ', '897184IMG-20180113-WA0008.jpg', 'javaidsonamarg777@gmail.com', 'English, Hindi', 'Explore the untouched beauties of Kasmir Valley with me.', '2018-01-14 16:11:49', '1355', 'historic', 0),
(56, ' Mr Mohit ', 'Himachal Pradesh', '833613FB_IMG_1515762936849.jpg', 'moglitattooz@gmail.com', 'Hindi, English', 'Only your Will Power can get you on Adventures, Body is just an excuse.', '2018-01-14 16:14:47', '1661', 'treking', 0),
(57, ' Mr Indra Kumar ', 'Nepal', '696812IMG-20180114-WA0002.jpg', 'indrarai61@hotmail.com', 'Hindi, English, Nepali', 'Guiding peoples of different countries since a long time. Explore Nepal, the majestic beauty with me.', '2018-01-14 16:19:37', '****', 'treking', 0),
(58, ' Mr Arup ', 'Kolkata', '336373Arup_Chowdhury_-_Kolkata_2016-09-10_9326.JPG', 'arup1981@gmail.com', 'Hindi, English, Bengali', 'Travel the beauties and live the life.', '2018-01-15 13:52:41', '1644', '', 0),
(59, ' Mr Shiv Charan', 'Himachal Pradesh', '914512IMG-20180116-WA0000.jpg', 'bituthetourguide@gmail.com', 'Hindi, English', 'Experience the ecstatic beauty of the himalayas.', '2018-01-16 07:02:43', '3377', 'treking', 0),
(66, 'Mr Naresh ', 'Agra, Delhi, Jaipur', '670384IMG_20171223_124341.jpg', 'nareshtaj@yahoo.com', 'English, Hindi', '13 YEARS OF EXPERIENCES, CITY TOUR, PHOTOGRAPHY TOUR', '2018-01-26 08:17:18', '123', 'historic', 0),
(67, 'Mr Umed ', 'jodhpur', '283700final.jpg', 'lavillebleue1459@gmail.com', 'English, French ,Hindi', '15 Years of  Experiences', '2018-01-26 16:06:58', '123', 'historic', 0),
(68, 'Mr Rajat ', 'varanasi', '884117IMG-20180127-WA0004.jpg', 'rajat.mintu@gmail.com', 'English, Russian,Hindi', '5 years of experience', '2018-01-27 17:19:04', '123', 'historic', 0),
(69, 'Mr Deshraj', 'All India', '593759IMG-20180123-WA0010.jpg', 'desrajrana91@gmail.com', 'Hindi, English, French', 'Homie of mighty Hills.', '2018-01-30 15:20:23', '1331', 'treking', 0),
(70, 'Mr Vishal ', 'Delhi, Rajasthan,Uttar Pradesh', '169153IMG-20180202-WA0000.jpg', 'panditavishal@yahoo.com', 'Hindi,English', '10 Years of Experiences', '2018-02-02 17:11:02', '123', 'historic', 0),
(71, 'Mr Praveen ', 'Rajgir,Nalanda,Pawapuri', '546312Praveen_Nalanda_Guide_20180208_195147.jpg', 'praveenttmnal@gmail.com', 'English,Hindi', '6 Years of Experiences', '2018-02-08 14:50:33', '123', 'historic', 0),
(72, 'Mr Vivek ', 'Delhi, Jaipur,Agra', '32509com_vivek.jpg', 'vhanda7@gmail.com', 'Hindi,English', '12 Years of Experiences', '2018-02-09 13:48:07', '123', 'historic', 0),
(73, 'Mr Madan', 'Uttarakhand and Himachal Pradesh', '10592IMG_20171231_130811-1.jpg', 'ranamadan295@gmail.com', 'Hindi, English', 'Cheers to the mountains', '2018-02-10 17:11:33', '1217', 'treking', 0),
(74, 'Mr Irfan', 'Kashmir', '885276IMG_20170716_132201851.jpg', 'ifanmir28@gmail.com', 'English, Hindi, Urdu', 'Come and enjoy the astonishing beauty of Kashmir Valley.', '2018-02-12 06:24:47', '6663', 'treking', 0),
(75, 'Mr Nitesh Sharma', 'Mathura- Vrindavan ', '246051nitesh_sharma.jpg', 'gopalsharma1319@gmail.com', 'Hindi,English', '10 Years of Expriences', '2018-02-15 13:51:29', '123', 'historic', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tour_requests`
--

CREATE TABLE `tour_requests` (
  `request_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `fullName` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `date` varchar(15) NOT NULL,
  `no_of_people` int(2) NOT NULL,
  `guide_language` varchar(100) NOT NULL,
  `request_text` varchar(1000) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `additional_services` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_requests`
--

INSERT INTO `tour_requests` (`request_id`, `user_id`, `fullName`, `location`, `date`, `no_of_people`, `guide_language`, `request_text`, `experience`, `additional_services`) VALUES
(42, 4, '', 'Philippines', '03/27/2018', 2, 'English', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n                           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n                           consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n                           cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n                           proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n                           ', 'Active,Relaxing', 'Airport Transfers,Currency Exchange'),
(43, 4, '', 'USA', '03/22/2018', 2, 'English', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n                           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n                           consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n                           cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n                           proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n                           ', 'Active,Relaxing', 'Airport Transfers,Currency Exchange'),
(44, 4, '', 'Philippines', '03/22/2018', 2, 'English', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n                           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n                           consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n                           cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n                           proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n                           ', 'none', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`) VALUES
(4, 'ans@asn.com', 'Anshul', '517c70b0511caecebd23a50fb91cfefc'),
(5, '', '', 'd41d8cd98f00b204e9800998ecf8427e'),
(6, 'ads@asd.c', 'ads', '4c1835041bf4ba67f31addbb2ab53140');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_giude`
--
ALTER TABLE `book_giude`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_upcoming_event`
--
ALTER TABLE `book_upcoming_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_table`
--
ALTER TABLE `guide_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `join_team`
--
ALTER TABLE `join_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `querry`
--
ALTER TABLE `querry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_proposals`
--
ALTER TABLE `request_proposals`
  ADD PRIMARY KEY (`proposal_id`);

--
-- Indexes for table `request_status`
--
ALTER TABLE `request_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tour_guide`
--
ALTER TABLE `tour_guide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_requests`
--
ALTER TABLE `tour_requests`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_giude`
--
ALTER TABLE `book_giude`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `book_upcoming_event`
--
ALTER TABLE `book_upcoming_event`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `guide_table`
--
ALTER TABLE `guide_table`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `join_team`
--
ALTER TABLE `join_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `querry`
--
ALTER TABLE `querry`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `request_proposals`
--
ALTER TABLE `request_proposals`
  MODIFY `proposal_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `request_status`
--
ALTER TABLE `request_status`
  MODIFY `status_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tour_guide`
--
ALTER TABLE `tour_guide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `tour_requests`
--
ALTER TABLE `tour_requests`
  MODIFY `request_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
