SET ECHO ON
SET TAB OFF

SPOOL ""

ALTER SESSION SET NLS_DATE_FORMAT='YYYY-MM-DD';

SELECT SYSDATE
FROM DUAL;
--
DROP TABLE Booking;
DROP TABLE Guest;
DROP TABLE Room;
DROP TABLE Hotel;
--
--
CREATE TABLE Hotel
(hotelNo         NUMBER(4)       NOT NULL
,hotelName       VARCHAR2(16)    NOT NULL
,hotelAddress    VARCHAR2(40)    NOT NULL
,PRIMARY KEY (hotelNo)
);

CREATE TABLE Room
(hotelNo         NUMBER(4)       NOT NULL
,roomNo          NUMBER(4)       NOT NULL
,type            VARCHAR2(8)     NOT NULL
,price           NUMBER(6,2)     NOT NULL
,PRIMARY KEY (hotelNo, roomNo)
);

CREATE TABLE Guest
(guestNo         NUMBER(4)       NOT NULL
,guestName       VARCHAR2(15)    NOT NULL
,guestAddress    VARCHAR2(40)    NOT NULL
,PRIMARY KEY (guestNo)
);

CREATE TABLE Booking
(hotelNo          NUMBER(4)      NOT NULL
,guestNo          NUMBER(4)      NOT NULL
,dateFrom         DATE           NOT NULL
,dateTo           DATE
,roomNo           NUMBER(4)      NOT NULL
,PRIMARY KEY (hotelNo, guestNo, dateFrom)
);
--
-- Insert Sample Data
--
INSERT INTO Hotel
  VALUES (1, 'Grosvenor Hotel', '100 Oxford Road, London');
INSERT INTO Hotel
  VALUES (2, 'Meridian Hotel', '789 Howe Street, Vancouver');
INSERT INTO Hotel
  VALUES (3, 'Holiday Inn', '56 Edinburg Square, London');
INSERT INTO Hotel
  VALUES (4, 'The Ramada', '22 Memorial Avenue, New York');
INSERT INTO Hotel
  VALUES (5, 'Imperial Palace', '777 Lonsdale, North Vancouver');
INSERT INTO Hotel
  VALUES (6, 'Park Royal Hotel', '88 JANine Drive, West Vancouver');
INSERT INTO Hotel
  VALUES (7, 'Delta Inn', '900 Burrard Street, Vancouver');
INSERT INTO Hotel
  VALUES (8, 'Grosvenor Inn', '123 Granville Street, Vancouver');
INSERT INTO Hotel
  VALUES (9, 'Royale London', '500 Cambridge Road, London');
INSERT INTO Hotel
  VALUES (10, 'Olympic Resort', '223 Olympic Street, Whistler');
--
INSERT INTO Room
  VALUES (1, 1, 'Single', 40);
INSERT INTO Room
  VALUES (1, 2, 'Single', 40);
INSERT INTO Room
  VALUES (1, 3, 'Single', 40);
INSERT INTO Room
  VALUES (1, 4, 'Single', 40);
INSERT INTO Room
  VALUES (1, 5, 'Double', 55);
INSERT INTO Room
  VALUES (1, 6, 'Double', 55);
INSERT INTO Room
  VALUES (1, 7, 'Double', 55);
INSERT INTO Room
  VALUES (1, 8, 'Double', 55);
INSERT INTO Room
  VALUES (1, 9, 'Family', 85);
INSERT INTO Room
  VALUES (1, 10, 'Family', 90);
INSERT INTO Room
  VALUES (1, 11, 'Deluxe', 110);
INSERT INTO Room
  VALUES (1, 12, 'Deluxe', 120);
INSERT INTO Room
  VALUES (1, 13, 'Deluxe', 120);
INSERT INTO Room
  VALUES (2, 1, 'Double', 80);
INSERT INTO Room
  VALUES (2, 2, 'Double', 80);
INSERT INTO Room
  VALUES (2, 3, 'Double', 80);
INSERT INTO Room
  VALUES (2, 4, 'Double', 80);
INSERT INTO Room
  VALUES (2, 5, 'Double', 80);
INSERT INTO Room
  VALUES (2, 6, 'Family', 90);
INSERT INTO Room
  VALUES (2, 7, 'Family', 90);
INSERT INTO Room
  VALUES (2, 8, 'Family', 90);
INSERT INTO Room
  VALUES (2, 9, 'Family', 90);
INSERT INTO Room
  VALUES (2, 10, 'Deluxe', 150);
INSERT INTO Room
  VALUES (2, 11, 'Deluxe', 150);
INSERT INTO Room
  VALUES (2, 12, 'Deluxe', 150);
INSERT INTO Room
  VALUES (3, 1, 'Single', 35);
INSERT INTO Room
  VALUES (3, 2, 'Single', 35);
INSERT INTO Room
  VALUES (3, 3, 'Single', 35);
INSERT INTO Room
  VALUES (3, 4, 'Single', 35);
INSERT INTO Room
  VALUES (3, 5, 'Single', 35);
INSERT INTO Room
  VALUES (3, 6, 'Single', 35);
INSERT INTO Room
  VALUES (3, 7, 'Single', 35);
INSERT INTO Room
  VALUES (3, 8, 'Single', 35);
INSERT INTO Room
  VALUES (3, 9, 'Double', 50);
INSERT INTO Room
  VALUES (3, 10, 'Double', 50);
INSERT INTO Room
  VALUES (3, 11, 'Double', 50);
INSERT INTO Room
  VALUES (3, 12, 'Double', 50);
INSERT INTO Room
  VALUES (3, 13, 'Double', 50);
INSERT INTO Room
  VALUES (3, 14, 'Double', 50);
INSERT INTO Room
  VALUES (4, 1, 'Double', 100);
INSERT INTO Room
  VALUES (4, 2, 'Double', 100);
INSERT INTO Room
  VALUES (4, 3, 'Double', 100);
INSERT INTO Room
  VALUES (4, 4, 'Double', 100);
INSERT INTO Room
  VALUES (4, 5, 'Double', 100);
INSERT INTO Room
  VALUES (4, 6, 'Double', 100);
INSERT INTO Room
  VALUES (4, 7, 'Family', 160);
INSERT INTO Room
  VALUES (4, 8, 'Family', 160);
INSERT INTO Room
  VALUES (4, 9, 'Family', 160);
INSERT INTO Room
  VALUES (4, 10, 'Family', 160);
INSERT INTO Room
  VALUES (4, 11, 'Family', 160);
INSERT INTO Room
  VALUES (4, 12, 'Deluxe', 240);
INSERT INTO Room
  VALUES (4, 13, 'Deluxe', 240);
INSERT INTO Room
  VALUES (4, 14, 'Deluxe', 240);
INSERT INTO Room
  VALUES (4, 15, 'Deluxe', 240);
INSERT INTO Room
  VALUES (4, 16, 'Deluxe', 240);
INSERT INTO Room
  VALUES (5, 1, 'Double', 80);
INSERT INTO Room
  VALUES (5, 2, 'Double', 80);
INSERT INTO Room
  VALUES (5, 3, 'Double', 80);
INSERT INTO Room
  VALUES (5, 4, 'Double', 80);
INSERT INTO Room
  VALUES (5, 5, 'Double', 80);
INSERT INTO Room
  VALUES (5, 6, 'Double', 80);
INSERT INTO Room
  VALUES (5, 7, 'Family', 120);
INSERT INTO Room
  VALUES (5, 8, 'Family', 120);
INSERT INTO Room
  VALUES (5, 9, 'Family', 120);
INSERT INTO Room
  VALUES (5, 10, 'Family', 120);
INSERT INTO Room
  VALUES (5, 11, 'Family', 120);
INSERT INTO Room
  VALUES (5, 12, 'Family', 120);
INSERT INTO Room
  VALUES (5, 13, 'Deluxe', 145);
INSERT INTO Room
  VALUES (5, 14, 'Deluxe', 145);
INSERT INTO Room
  VALUES (5, 15, 'Deluxe', 145);
INSERT INTO Room
  VALUES (5, 16, 'Deluxe', 145);
INSERT INTO Room
  VALUES (5, 17, 'Deluxe', 145);
INSERT INTO Room
  VALUES (5, 18, 'Deluxe', 145);
INSERT INTO Room
  VALUES (6, 1, 'Single', 48);
INSERT INTO Room
  VALUES (6, 2, 'Single', 48);
INSERT INTO Room
  VALUES (6, 3, 'Single', 48);
INSERT INTO Room
  VALUES (6, 4, 'Single', 48);
INSERT INTO Room
  VALUES (6, 5, 'Single', 48);
INSERT INTO Room
  VALUES (6, 6, 'Single', 48);
INSERT INTO Room
  VALUES (6, 7, 'Single', 48);
INSERT INTO Room
  VALUES (6, 8, 'Single', 48);
INSERT INTO Room
  VALUES (6, 9, 'Double', 86);
INSERT INTO Room
  VALUES (6, 10, 'Double', 86);
INSERT INTO Room
  VALUES (6, 11, 'Double', 86);
INSERT INTO Room
  VALUES (6, 12, 'Double', 86);
INSERT INTO Room
  VALUES (6, 13, 'Double', 86);
INSERT INTO Room
  VALUES (6, 14, 'Double', 86);
INSERT INTO Room
  VALUES (6, 15, 'Double', 86);
INSERT INTO Room
  VALUES (6, 16, 'Double', 86);
INSERT INTO Room
  VALUES (7, 1, 'Double', 75);
INSERT INTO Room
  VALUES (7, 2, 'Double', 75);
INSERT INTO Room
  VALUES (7, 3, 'Double', 75);
INSERT INTO Room
  VALUES (7, 4, 'Double', 75);
INSERT INTO Room
  VALUES (7, 5, 'Double', 75);
INSERT INTO Room
  VALUES (7, 6, 'Double', 75);
INSERT INTO Room
  VALUES (7, 7, 'Double', 75);
INSERT INTO Room
  VALUES (7, 8, 'Double', 75);
INSERT INTO Room
  VALUES (7, 9, 'Double', 75);
INSERT INTO Room
  VALUES (7, 10, 'Double', 75);
INSERT INTO Room
  VALUES (7, 11, 'Double', 75);
INSERT INTO Room
  VALUES (7, 12, 'Double', 75);
INSERT INTO Room
  VALUES (8, 1, 'Double', 95);
INSERT INTO Room
  VALUES (8, 2, 'Double', 95);
INSERT INTO Room
  VALUES (8, 3, 'Double', 95);
INSERT INTO Room
  VALUES (8, 4, 'Double', 95);
INSERT INTO Room
  VALUES (8, 5, 'Double', 95);
INSERT INTO Room
  VALUES (8, 6, 'Family', 125);
INSERT INTO Room
  VALUES (8, 7, 'Family', 125);
INSERT INTO Room
  VALUES (8, 8, 'Family', 125);
INSERT INTO Room
  VALUES (8, 9, 'Family', 125);
INSERT INTO Room
  VALUES (8, 10, 'Family', 125);
INSERT INTO Room
  VALUES (8, 11, 'Deluxe', 155);
INSERT INTO Room
  VALUES (8, 12, 'Deluxe', 155);
INSERT INTO Room
  VALUES (8, 13, 'Deluxe', 155);
INSERT INTO Room
  VALUES (8, 14, 'Deluxe', 155);
INSERT INTO Room
  VALUES (8, 15, 'Deluxe', 155);
INSERT INTO Room
  VALUES (8, 16, 'Single', 45);
INSERT INTO Room
  VALUES (8, 17, 'Single', 45);
INSERT INTO Room
  VALUES (8, 18, 'Single', 45);
INSERT INTO Room
  VALUES (8, 19, 'Single', 45);
INSERT INTO Room
  VALUES (8, 20, 'Single', 45);
--
INSERT INTO Guest
  VALUES (1, 'Tony Saunders', '2000 Queens Avenue, Winnipeg');
INSERT INTO Guest
  VALUES (2, 'Ed Cunningham', '30 Oak Street, Vancouver');
INSERT INTO Guest
  VALUES (3, 'Dawn Smith', '25 Walton Drive, Banff');
INSERT INTO Guest
  VALUES (4, 'George Michaels', '30 Hampton Street, London');
INSERT INTO Guest
  VALUES (5, 'Rick Hamilton', '987 King Edward Road, London');
INSERT INTO Guest
  VALUES (6, 'Floyd Mann', '8 Wascana Crescent, Regina');
INSERT INTO Guest
  VALUES (7, 'Thomas Lee', '200 Main Street, Vancouver');
INSERT INTO Guest
  VALUES (8, 'Sandy Alford', '234 Ontario Street, Montreal');
INSERT INTO Guest
  VALUES (9, 'Peter Kennedy', '20 Austin Drive, London');
INSERT INTO Guest
  VALUES (10, 'Gordon Ho', '5 No. 3 Road, Richmond');
INSERT INTO Guest
  VALUES (11, 'Diana Darby', '50 Robson Street, Vancouver');
INSERT INTO Guest
  VALUES (12, 'Sundeep Mohan', '1000 Victoria Avenue, London');
INSERT INTO Guest
  VALUES (13, 'Eileen Reynolds', '100 Willow Stree, Calgary');
INSERT INTO Guest
  VALUES (14, 'Ken Matsuda', '333 100th Avenue, Vancouver');
INSERT INTO Guest
  VALUES (15, 'Ivan Pratt', '20 Lincoln Square, London');
--
INSERT INTO Booking
  VALUES (1, 5, DATE'2018-01-16', DATE'2018-01-18', 7);
INSERT INTO Booking
  VALUES (1, 9, DATE'2018-01-27', DATE'2018-02-04', 5);
INSERT INTO Booking
  VALUES (1, 9, DATE'2018-02-07', DATE'2018-02-14', 5);
INSERT INTO Booking
  VALUES (1, 9, DATE'2018-03-07', DATE'2018-03-14', 5);
INSERT INTO Booking
  VALUES (1, 10, DATE'2018-03-22', DATE'2018-03-30', 1);
INSERT INTO Booking
  VALUES (1, 11, DATE'2018-02-06', DATE'2018-02-22', 3);
INSERT INTO Booking
  VALUES (1, 12, DATE'2018-01-21', DATE'2018-02-24', 4);
INSERT INTO Booking
  VALUES (1, 13, DATE'2018-01-30', NULL, 7);
INSERT INTO Booking
  VALUES (1, 14, DATE'2018-01-25', DATE'2018-01-28', 2);
INSERT INTO Booking
  VALUES (1, 15, DATE'2018-01-22', DATE'2018-02-02', 3);
INSERT INTO Booking
  VALUES (2, 1, DATE'2018-01-21', DATE'2018-01-23', 9);
INSERT INTO Booking
  VALUES (2, 6, DATE'2018-01-21', NULL, 10);
INSERT INTO Booking
  VALUES (3, 2, DATE'2018-01-26', NULL, 3);
INSERT INTO Booking
  VALUES (3, 6, DATE'2018-03-05', DATE'2018-03-07', 12);
INSERT INTO Booking
  VALUES (4, 11, DATE'2018-01-27', DATE'2018-01-28', 14);
INSERT INTO Booking
  VALUES (4, 7, DATE'2018-02-09', DATE'2018-02-11', 4);
INSERT INTO Booking
  VALUES (4, 8, DATE'2018-03-10', DATE'2018-03-18', 7);
INSERT INTO Booking
  VALUES (5, 3, DATE'2018-02-06', DATE'2018-02-08', 17);
INSERT INTO Booking
  VALUES (5, 11, DATE'2018-02-06', NULL, 16);
INSERT INTO Booking
  VALUES (6, 1, DATE'2018-01-30', DATE'2018-02-02', 5);
INSERT INTO Booking
  VALUES (6, 14, DATE'2018-03-06', DATE'2018-03-08', 8);
INSERT INTO Booking
  VALUES (6, 9, DATE'2018-03-06', NULL, 4);
INSERT INTO Booking
  VALUES (7, 15, DATE'2018-02-28', DATE'2018-03-05', 1);
INSERT INTO Booking
  VALUES (7, 4, DATE'2018-02-02', DATE'2018-02-04', 2);
INSERT INTO Booking
  VALUES (8, 1, DATE'2018-02-03', DATE'2018-03-26', 15);
INSERT INTO Booking
  VALUES (8, 12, DATE'2018-02-01', DATE'2018-03-07', 20);
INSERT INTO Booking
  VALUES (8, 5, DATE'2018-01-19', DATE'2018-02-28', 1);

 
-- What is the average price of a room in London? . a) JOIN method, (b) IN subquery.--

-- A)--
SELECT AVG(price)
FROM Room r
	INNER JOIN Hotel h 
		ON r.hotelNo = h.hotelNo
WHERE h.hotelAddress LIKE '%, London';

-- B) --
SELECT AVG(price)
FROM Room r
WHERE hotelNo IN (SELECT hotelNo FROM Hotel h WHERE hotelAddress LIKE '%, London');

-- How many different guests have made bookings for 2018-02 for each hotel? --
SELECT h.hotelName, COUNT(DISTINCT(g.guestNo))
FROM Guest g
	INNER JOIN Booking b
		ON b.guestNo = g.guestNo
	INNER JOIN Hotel h
		ON b.hotelNo = h.hotelNo
WHERE (dateTo IS NULL OR dateTo >= DATE'2018-02-01') AND dateFrom < DATE'2018-03-01'
GROUP BY h.hotelName
ORDER BY h.hotelName ASC;

-- List all guests who are staying at a Grosvenor location and all the rooms --  
SELECT DISTINCT h.hotelNo, r.roomNo, r.type, r.price, g.guestNo, g.guestName
FROM Hotel h
    LEFT JOIN Room r ON h.hotelNo = r.hotelNo
    LEFT JOIN (SELECT * 
               FROM Booking WHERE dateFrom <= DATE'2018-02-05' 
               AND (dateTo IS NULL OR dateTo >= Date'2018-02-05')) b
        ON h.hotelNo = b.hotelNo
        AND r.roomNo = b.roomNo
        AND r.hotelNo = b.hotelNo
    LEFT JOIN Guest g ON b.guestNo = g.guestNo
WHERE hotelName LIKE '%Grosvenor%'
ORDER BY hotelNo ASC, roomNo ASC;


-- List all the unoccupied rooms of the Grosvenor locations --
SELECT r.roomNo, h.hotelNo
FROM Room r
	JOIN Hotel h ON r.hotelNo = h.hotelNo
WHERE (r.roomNo, r.hotelNo) NOT IN (SELECT b.roomNo, b.hotelNo
						FROM Booking b 
						WHERE dateFrom <= DATE'2018-02-05' AND
						(dateTo IS NULL OR dateTo >= Date'2018-02-05')) 
    AND h.hotelName LIKE '%Grosvenor%'
ORDER BY h.hotelNo ASC, r.roomNo ASC;

-- Same as above but with NOT EXISTS --
SELECT r.roomNo, h.hotelNo
FROM Room r
	JOIN Hotel h ON r.hotelNo = h.hotelNo
WHERE NOT EXISTS(SELECT 1
				FROM Booking b 
				WHERE dateFrom <= DATE'2018-02-05' AND
				(dateTo IS NULL OR dateTo >= Date'2018-02-05')
                AND r.hotelNo = b.hotelNo AND r.roomNo = b.roomNo) 
    AND h.hotelName LIKE '%Grosvenor%'
ORDER BY r.roomNo ASC, h.hotelNo ASC;


    
-- Same as above but using LEFT JOIN--
SELECT DISTINCT h.hotelNo, r.roomNo
FROM Room r
    LEFT JOIN (SELECT roomNo, hotelNo, dateFrom
              FROM Booking
              WHERE dateFrom <= DATE'2018-02-05' AND (dateTo IS NULL 
                    OR dateTo >= Date'2018-02-05')) b
          ON b.roomNo = r.roomNo
          AND r.hotelNo = b.hotelNo
    INNER JOIN Hotel h ON h.hotelNo = r.hotelNo
WHERE hotelName LIKE '%Grosvenor%'
    AND dateFrom IS NULL
ORDER BY hotelNo, roomNo;



-- Same as above but using MINUS --
SELECT r.roomNo, h.hotelNo
FROM Room r
	JOIN Hotel h ON r.hotelNo = h.hotelNo
WHERE h.hotelName LIKE '%Grosvenor%'
	MINUS
SELECT b.roomNo, h.hotelNo
FROM Booking b
	JOIN Hotel h ON b.hotelNo = h.hotelNo
WHERE dateFrom <= DATE'2018-02-05' AND (dateTo IS NULL OR dateTo >= Date'2018-02-05') AND
h.hotelName LIKE '%Grosvenor%';

-- What are the average number of bookings of all the hotels in February? --
SELECT COUNT(guestNo) / COUNT(DISTINCT hotelNo) AS "Average Bookings in February"
FROM Booking b
WHERE (dateTo IS NULL OR dateTo >= DATE'2018-02-01') AND dateFrom < DATE'2018-03-01';

-- What is the lost income of all the unoccupied rooms of all the hotels? --

SELECT h.hotelName, h.hotelNo, SUM(r.price) AS "Lost Income"
FROM Room r
	JOIN Hotel h ON r.hotelNo = h.hotelNo
WHERE (r.roomNo, r.hotelNo) NOT IN (SELECT b.roomNo, b.hotelNo
						FROM Booking b 
						WHERE dateFrom <= DATE'2018-02-05' AND
						(dateTo IS NULL OR dateTo >= Date'2018-02-05'))
GROUP BY h.hotelName, h.hotelNo
ORDER BY h.hotelNo ASC;

-- A view of all the guests at the Grosvenor Hotel. --
DROP VIEW guestAccount;
CREATE VIEW guestAccount
("Room", "Name", "Check-in", "Check-out", "Rate", "#Days", "Total")
AS
SELECT DISTINCT r.roomNo, guestName, dateFrom, DATE'2018-02-05', price, 
                (DATE'2018-02-05' - dateFrom), ((DATE'2018-02-05' - dateFrom) * price)
FROM Room r 
    JOIN Hotel h
        ON r.hotelNo = h.hotelNo
    JOIN Booking b
        ON h.hotelNo = b.hotelNo AND r.roomNo = b.roomNo
    JOIN Guest g
        ON b.guestNo = g.guestNo
WHERE h.hotelName = 'Grosvenor Hotel'
    AND dateFrom <= DATE'2018-02-05' AND
    (dateTo IS NULL OR dateTo >= Date'2018-02-05');
        
SELECT * 
FROM guestAccount;

-- Which guests have stayed at a Grosvenor location, and Park Royal Hotel but not the Meridian? --
SELECT guestName, guestAddress
FROM Guest g
	JOIN Booking b ON g.guestNo = b.guestNo
	JOIN Hotel h ON b.hotelNo = h.hotelNo
WHERE hotelName LIKE '%Grosvenor%'
INTERSECT
SELECT guestName, guestAddress
FROM Guest g
	JOIN Booking b ON g.guestNo = b.guestNo
	JOIN Hotel h ON b.hotelNo = h.hotelNo
WHERE hotelName = 'Park Royal Hotel'
MINUS
SELECT guestName, guestAddress
FROM Guest g
	JOIN Booking b ON g.guestNo = b.guestNo
	JOIN Hotel h ON b.hotelNo = h.hotelNo
WHERE hotelName = 'Meridian Hotel';


SPOOL OFF