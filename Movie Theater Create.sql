-- Initial creation: Customers, Movies, Tickets, Concessions, Reservations, Payments
CREATE TABLE "Customers" ("customer_id" int, "first_name" varchar(50), "last_name" varchar(50), "email" varchar(80), "phone" varchar(20));
CREATE TABLE "Movies" ("movie_id" int,  "name" varchar(100), "duration" int);
CREATE TABLE "Tickets" ("ticket_id" int, "seat_no" varchar(20), "screen" int, "time" varchar(20), "movie_id" int, "price" int, "date" date);
CREATE TABLE "Concessions" ("concession_id" int, "name" varchar(50), "price" int, "category" varchar(20));
CREATE TABLE "Reservations" ("reservation_id" int, "customer_id" int, "ticket_id" int, "concession_id" int, "payment_status" varchar(20));
CREATE TABLE "Payments" ("payment_id" int, "reservation_id" int, "amount" int, "date" date);

-- Adding primary key to IDs
ALTER TABLE "Customers" ADD PRIMARY KEY("customer_id");
ALTER TABLE "Concessions" ADD PRIMARY KEY("concession_id");
ALTER TABLE "Movies" ADD PRIMARY KEY("movie_id");
ALTER TABLE "Tickets" ADD PRIMARY KEY("ticket_id");
ALTER TABLE "Payments" ADD PRIMARY KEY("payment_id");
ALTER TABLE "Reservations" ADD PRIMARY KEY("reservation_id");

-- Mapping to foreign key IDs
ALTER TABLE "Tickets" ADD CONSTRAINT "FK_Tickets.movie_id" FOREIGN KEY ("movie_id") REFERENCES "Movies"("movie_id");
ALTER TABLE "Reservations" ADD CONSTRAINT "FK_Reservations.concession_id" FOREIGN KEY ("concession_id") REFERENCES "Concessions"("concession_id");
ALTER TABLE "Reservations" ADD CONSTRAINT "FK_Reservations.ticket_id" FOREIGN KEY ("ticket_id") REFERENCES "Tickets"("ticket_id");
ALTER TABLE "Reservations" ADD CONSTRAINT "FK_Reservations.customer_id" FOREIGN KEY ("customer_id") REFERENCES "Customers"("customer_id");
ALTER TABLE "Payments" ADD CONSTRAINT "FK_Payments.reservation_id" FOREIGN KEY ("reservation_id") REFERENCES "Reservations"("reservation_id");