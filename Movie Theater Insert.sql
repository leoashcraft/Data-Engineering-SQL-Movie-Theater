-- Movies: movie_id, name, duration
INSERT INTO "Movies" VALUES (901, 'Fast X', 141);
INSERT INTO "Movies" VALUES (902, 'Guardians of the Galaxy Vol. 3', 150);
INSERT INTO "Movies" VALUES (903, 'The Super Mario Bros. Movie', 92);
INSERT INTO "Movies" VALUES (904, 'The Machine', 112);
INSERT INTO "Movies" VALUES (905, 'About My Father', 89);
INSERT INTO "Movies" VALUES (906, 'Kandahar', 119);
INSERT INTO "Movies" VALUES (907, 'Book Club: The Next Chapter', 107);
INSERT INTO "Movies" VALUES (908, 'Evil Dead Rise', 97);
INSERT INTO "Movies" VALUES (909, 'You Hurt My Feelings', 93);
INSERT INTO "Movies" VALUES (910, 'John Wick: Chapter 4', 169);

-- Concessions: concession_id, name, price, category
INSERT INTO "Concessions" VALUES (101, 'Hotdog', 6, 'Food');
INSERT INTO "Concessions" VALUES (102, 'Hamburger', 6, 'Food');
INSERT INTO "Concessions" VALUES (103, 'Nachos', 7, 'Food');
INSERT INTO "Concessions" VALUES (104, 'Pretzel', 5, 'Food');
INSERT INTO "Concessions" VALUES (105, 'Popcorn Small', 3, 'Food');
INSERT INTO "Concessions" VALUES (106, 'Popcorn Medium', 4, 'Food');
INSERT INTO "Concessions" VALUES (107, 'Popcorn Large', 5, 'Food');
INSERT INTO "Concessions" VALUES (201, 'M&Ms', 2, 'Candy');
INSERT INTO "Concessions" VALUES (202, 'Snickers', 2, 'Candy');
INSERT INTO "Concessions" VALUES (213, 'Butterfinger', 2, 'Candy');
INSERT INTO "Concessions" VALUES (301, 'Coke', 3, 'Drinks');
INSERT INTO "Concessions" VALUES (302, 'Diet Coke', 3, 'Drinks');
INSERT INTO "Concessions" VALUES (303, 'Dr Pepper', 3, 'Drinks');
INSERT INTO "Concessions" VALUES (304, 'Diet Dr Pepper', 3, 'Drinks');
INSERT INTO "Concessions" VALUES (305, 'Bottled Water', 3, 'Drinks');
INSERT INTO "Concessions" VALUES (306, 'Milk', 3, 'Drinks');
INSERT INTO "Concessions" VALUES (307, 'Chocolate Milk', 3, 'Drinks');
INSERT INTO "Concessions" VALUES (308, 'Hi-C', 2, 'Drinks');
INSERT INTO "Concessions" VALUES (401, 'Heineken', 4, 'Beer');
INSERT INTO "Concessions" VALUES (402, 'Dos Equis', 4, 'Beer');
INSERT INTO "Concessions" VALUES (403, 'Lagunas IPA', 5, 'Beer');
INSERT INTO "Concessions" VALUES (404, 'Miller Lite', 3, 'Beer');
INSERT INTO "Concessions" VALUES (405, 'Pabst Blue Ribbon', 1, 'Beer');
INSERT INTO "Concessions" VALUES (501, 'House Red', 4, 'Wine');
INSERT INTO "Concessions" VALUES (502, 'House White', 4, 'Wine');
INSERT INTO "Concessions" VALUES (503, 'Josh Cellars Cabernet Sauvignon', 5, 'Wine');
INSERT INTO "Concessions" VALUES (504, 'Apothic Red Blend', 6, 'Wine');
INSERT INTO "Concessions" VALUES (505, 'Josh Cellars Chardonnay', 5, 'Wine');
INSERT INTO "Concessions" VALUES (601, 'Margarita', 13, 'Liquor');
INSERT INTO "Concessions" VALUES (602, 'Martini', 14, 'Liquor');
INSERT INTO "Concessions" VALUES (603, 'Old Fashioned', 14, 'Liquor');
INSERT INTO "Concessions" VALUES (604, 'Mojito', 12, 'Liquor');
INSERT INTO "Concessions" VALUES (605, 'Pina Colada', 12, 'Liquor');

-- Dummy Customer: customer_id, first_name, last_name, email, phone
INSERT INTO "Customers" VALUES (1001, 'Leo', 'Ashcraft', 'leoashcraft@fakesqltest.com', '555-555-5555')

-- Dummy Ticket: ticket_id, seat_no, screen, time, movie_id, price, date
INSERT INTO "Tickets" VALUES (101, 'F4', 5, '5:00 PM', 904, 5, '2023-05-30')

-- Dummy Reservation: reservation_id, customer_id, ticket_id, concession_id, payment_status
INSERT INTO "Reservations" VALUES (10, 1001, 101, 501, 'Pre-Paid')

-- Dummy Payment: payment_id, reservation_id, amount, date
INSERT INTO "Payments" VALUES (10001, 10, 11, '2023-05-30')