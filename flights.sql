
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*Creating table name called as flights and adding the attributes with datatypes and lengths*/

CREATE TABLE `flights` (
  `imageflight` varchar(20) NOT NULL,
  `nameflight` varchar(20) NOT NULL,
  `soufrom` varchar(20) NOT NULL,
  `desto` varchar(20) NOT NULL,
  `departdate` date NOT NULL,
  `departtime` time(4) NOT NULL,
  `arrivetime` time(4) NOT NULL,
  `totaltime` time(4) NOT NULL,
  `price` decimal(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Inserting data into the tables*/

INSERT INTO `flights` (`imageflight`, `nameflight`, `soufrom`, `desto`, `departdate`, `departtime`, `arrivetime`, `totaltime`, `price`) VALUES
('', 'Indigo', 'Chennai', 'Bangalore', '2018-07-06', '09:00:00.0000', '10:00:00.0000', '01:00:00.0000', '1500'),
('indigoflight.jpg', 'Indigo', 'Chennai', 'Bangalore', '2018-07-06', '09:00:00.0000', '10:00:00.0000', '01:00:00.0000', '1500'),
('indigoflight.jpg', 'Indigo', 'Chennai', 'Hyderabad', '2018-07-06', '10:00:00.0000', '11:30:00.0000', '01:30:00.0000', '2000'),
('indigoflight.jpg', 'Indigo', 'Chennai', 'Mumbai', '2018-07-06', '11:00:00.0000', '13:00:00.0000', '02:00:00.0000', '2500'),
('spiceflight.png', 'Spicejet', 'Bangalore', 'Chennai', '2018-07-06', '08:30:00.0000', '09:30:00.0000', '01:00:00.0000', '1500'),
('spiceflight.png', 'Spicejet', 'Bangalore', 'Hyderabad', '2018-07-06', '09:30:00.0000', '11:00:00.0000', '01:30:00.0000', '2000'),
('spiceflight.png', 'Spicejet', 'Bangalore', 'Mumbai', '2018-07-06', '11:00:00.0000', '12:30:00.0000', '01:30:00.0000', '2000'),
('airflight.png', 'AirIndia', 'Hyderabad', 'Chennai', '2018-07-06', '07:00:00.0000', '08:30:00.0000', '01:30:00.0000', '2000'),
('airflight.png', 'AirIndia', 'Hyderabad', 'Bangalore', '2018-07-06', '09:15:00.0000', '10:30:00.0000', '01:15:00.0000', '2000'),
('airflight.png', 'AirIndia', 'Hyderabad', 'Mumbai', '2018-07-06', '10:15:00.0000', '12:00:00.0000', '01:45:00.0000', '2500'),
('aircosta.png', 'Aircosta', 'Mumbai', 'Chennai', '2018-07-06', '07:00:00.0000', '09:00:00.0000', '02:00:00.0000', '2500'),
('aircosta.png', 'Aircosta', 'Mumbai', 'Bangalore', '2018-07-06', '15:00:00.0000', '16:30:00.0000', '01:30:00.0000', '2000'),
('aircosta.png', 'Aircosta', 'Mumbai', 'Hyderabad', '2018-07-06', '17:00:00.0000', '19:00:00.0000', '02:00:00.0000', '2500'),
('spiceflight.png', 'Spicejet', 'Chennai', 'Hyderabad', '2018-07-06', '05:00:00.0000', '07:00:00.0000', '02:00:00.0000', '2000'),
('aircosta.png', 'Aircosta', 'Chennai', 'Hyderabad', '2018-07-06', '08:00:00.0000', '09:00:00.0000', '01:00:00.0000', '2500'),
('spiceflight.png', 'Spicejet', 'Chennai', 'Hyderabad', '2018-07-06', '13:00:00.0000', '14:30:00.0000', '01:30:00.0000', '2000'),
('spiceflight.png', 'Spicejet', 'Mumbai', 'Hyderabad', '2018-07-06', '08:00:00.0000', '10:00:00.0000', '02:00:00.0000', '2000'),
('indigoflight.jpg', 'Indigo', 'Mumbai', 'Hyderabad', '2018-07-06', '21:00:00.0000', '23:00:00.0000', '02:00:00.0000', '5500'),
('airflight.png', 'AirIndia', 'Mumbai', 'Hyderabad', '2018-07-06', '14:00:00.0000', '16:00:00.0000', '02:00:00.0000', '2500'),
('spiceflight.png', 'Spicejet', 'Mumbai', 'Chennai', '2018-07-06', '08:00:00.0000', '10:30:00.0000', '02:30:00.0000', '4000'),
('airflight.png', 'AirIndia', 'Mumbai', 'Chennai', '2018-07-06', '19:00:00.0000', '21:00:00.0000', '02:00:00.0000', '6000'),
('indigoflight.jpg', 'Indigo', 'Mumbai', 'Bangalore', '2018-07-06', '05:00:00.0000', '07:00:00.0000', '02:00:00.0000', '1500'),
('airflight.png', 'AirIndia', 'Mumbai', 'Bangalore', '2018-07-06', '20:00:00.0000', '22:00:00.0000', '02:00:00.0000', '7000'),
('airflight.png', 'AirIndia', 'Chennai', 'Bangalore', '2018-07-06', '06:00:00.0000', '07:00:00.0000', '01:00:00.0000', '2000'),
('aircosta.png', 'Aircosta', 'Chennai', 'Bangalore', '2018-07-06', '20:00:00.0000', '21:00:00.0000', '01:00:00.0000', '6500'),
('indigoflight.jpg', 'Indigo', 'Chennai', 'Mumbai', '2018-07-06', '09:00:00.0000', '11:00:00.0000', '02:00:00.0000', '7000'),
('airflight.png', 'AirIndia', 'Bangalore', 'Chennai', '2018-07-06', '20:00:00.0000', '21:00:00.0000', '01:00:00.0000', '6000'),
('airflight.png', 'AirIndia', 'Bangalore', 'Mumbai', '2018-07-06', '08:00:00.0000', '10:00:00.0000', '02:00:00.0000', '4500'),
('indigoflight.jpg', 'Indigo', 'Bangalore', 'Hyderabad', '2018-07-06', '11:00:00.0000', '13:00:00.0000', '02:00:00.0000', '7000'),
('spiceflight.png', 'Spicejet', 'Hyderabad', 'Chennai', '2018-07-06', '11:00:00.0000', '13:00:00.0000', '02:00:00.0000', '3000'),
('indigoflight.jpg', 'Indigo', 'Hyderabad', 'Bangalore', '2018-07-06', '09:00:00.0000', '11:00:00.0000', '02:00:00.0000', '8000'),
('spiceflight.png', 'Spicejet', 'Hyderabad', 'Mumbai', '2018-07-06', '21:00:00.0000', '23:00:00.0000', '02:00:00.0000', '9000');

