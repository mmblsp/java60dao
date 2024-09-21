CREATE TABLE if not exists public.CUSTOMERS
(
    id           SERIAL PRIMARY KEY,
    name         TEXT    NOT NULL,
    surname      TEXT    NOT NULL,
    age          INTEGER NOT NULL,
    phone_number TEXT
);
INSERT INTO public.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Anatoly', 'Zhuchkov', 42, 79002543135);
INSERT INTO public.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Aleksandr', 'Leshkov', 30, 79002543136);
INSERT INTO public.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Artur', 'Simonan', 31, 79002543137);
INSERT INTO public.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Alla', 'Kuprazkina', 37, 79002543138);
INSERT INTO public.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Allia', 'Kirpa', 29, 79002543139);

CREATE TABLE if not exists public.ORDERS
(
    id           SERIAL PRIMARY KEY,
    date         DATE,
    customer_id  INTEGER NOT NULL,
    product_name TEXT    NOT NULL,
    amount       INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES public.Customers (Id)
);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-09-20', 1, 'Chips', 1);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-09-20', 2, 'Chips', 1);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-09-20', 3, 'Chips', 1);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-09-20', 4, 'Chips', 1);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-09-20', 5, 'Chips', 1);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-09-20', 1, 'kurs netology', 1);