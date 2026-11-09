INSERT INTO SECTOARE (nume_sector, descriere) VALUES ('Tehnologie', 'Companii din IT, Software, Semi-conductori si Hardware');
INSERT INTO SECTOARE (nume_sector, descriere) VALUES ('Energie', 'Companii petroliere, gaze naturale si energie regenerabila');
INSERT INTO SECTOARE (nume_sector, descriere) VALUES ('Finante', 'Banci de investitii, servicii financiare si asigurari');
INSERT INTO SECTOARE (nume_sector, descriere) VALUES ('Sanatate', 'Companii farmaceutice, biotehnologie si servicii medicale');

INSERT INTO ACTIVE (id_sector, simbol_ticker, denumire_companie, tip_activ) VALUES (1, 'AAPL', 'Apple Inc.', 'ACTIUNE');
INSERT INTO ACTIVE (id_sector, simbol_ticker, denumire_companie, tip_activ) VALUES (1, 'NVDA', 'NVIDIA Corporation', 'ACTIUNE');
INSERT INTO ACTIVE (id_sector, simbol_ticker, denumire_companie, tip_activ) VALUES (1, 'MSFT', 'Microsoft Corporation', 'ACTIUNE');
INSERT INTO ACTIVE (id_sector, simbol_ticker, denumire_companie, tip_activ) VALUES (2, 'XOM', 'Exxon Mobil Corp.', 'ACTIUNE');
INSERT INTO ACTIVE (id_sector, simbol_ticker, denumire_companie, tip_activ) VALUES (3, 'JPM', 'JPMorgan Chase & Co.', 'ACTIUNE');

INSERT INTO UTILIZATORI (nume, email, parola_hash, rol) VALUES ('Hossu Antonio', 'antonio@tradeflex.ro', '$2a$12$e80b85a30eef7f8a85f47a61d15...', 'ADMIN');
INSERT INTO UTILIZATORI (nume, email, parola_hash, rol) VALUES ('Popescu Ion', 'ion.popescu@gmail.com', '$2a$12$a67b84f91d0e85a67f12c...', 'INVESTITOR');
INSERT INTO UTILIZATORI (nume, email, parola_hash, rol) VALUES ('Ionescu Maria', 'maria.ionescu@yahoo.com', '$2a$12$c49b81f11e9a22d34e65...', 'INVESTITOR');

INSERT INTO PORTOFOLII (id_utilizator, denumire, moneda, sold_cash) VALUES (1, 'Portofoliu Main Admin', 'USD', 25000.00);
INSERT INTO PORTOFOLII (id_utilizator, denumire, moneda, sold_cash) VALUES (2, 'Tech Growth 2026', 'USD', 12500.50);
INSERT INTO PORTOFOLII (id_utilizator, denumire, moneda, sold_cash) VALUES (3, 'Dividende Pasive', 'EUR', 8400.00);

INSERT INTO COTATII_ZILNICE (id_activ, data_cotatie, pret_deschidere, pret_inchidere, pret_maxim, pret_minim, volum) VALUES (1, TO_DATE('2026-03-01', 'YYYY-MM-DD'), 180.50, 182.30, 183.00, 179.80, 52000000);
INSERT INTO COTATII_ZILNICE (id_activ, data_cotatie, pret_deschidere, pret_inchidere, pret_maxim, pret_minim, volum) VALUES (2, TO_DATE('2026-03-01', 'YYYY-MM-DD'), 890.00, 912.40, 915.00, 885.50, 38000000);
INSERT INTO COTATII_ZILNICE (id_activ, data_cotatie, pret_deschidere, pret_inchidere, pret_maxim, pret_minim, volum) VALUES (3, TO_DATE('2026-03-01', 'YYYY-MM-DD'), 415.00, 418.20, 420.00, 412.00, 21000000);

INSERT INTO ORDINE (id_portofoliu, id_activ, tip_ordin, cantitate_solicitata, pret_limita, status) VALUES (2, 1, 'BUY', 50, 181.00, 'EXECUTAT');
INSERT INTO TRANZACTII (id_ordin, cantitate_executata, pret_executie, comision) VALUES (1, 50, 180.80, 5.00);

INSERT INTO ORDINE (id_portofoliu, id_activ, tip_ordin, cantitate_solicitata, pret_limita, status) VALUES (2, 2, 'BUY', 10, 900.00, 'EXECUTAT');
INSERT INTO TRANZACTII (id_ordin, cantitate_executata, pret_executie, comision) VALUES (2, 10, 895.00, 12.50);

INSERT INTO POZITII (id_portofoliu, id_activ, cantitate_totala, pret_mediu_achizitie) VALUES (2, 1, 50, 180.80);
INSERT INTO POZITII (id_portofoliu, id_activ, cantitate_totala, pret_mediu_achizitie) VALUES (2, 2, 10, 895.00);

INSERT INTO DIVIDENDE (id_activ, suma_per_actiune, data_ex_dividend, data_platii) VALUES (1, 0.25, TO_DATE('2026-02-10', 'YYYY-MM-DD'), TO_DATE('2026-02-25', 'YYYY-MM-DD'));
INSERT INTO INCASARI_DIVIDENDE (id_portofoliu, id_dividend, suma_totala_incasata) VALUES (2, 1, 12.50);

INSERT INTO PREDICTII_IA (id_activ, id_portofoliu, clasa_risc, orizont_zile, pret_estimat, directie_trend) VALUES (2, 2, 'MEDIU', 30, 980.00, 'BULLISH');
INSERT INTO PREDICTII_IA (id_activ, id_portofoliu, clasa_risc, orizont_zile, pret_estimat, directie_trend) VALUES (1, 2, 'SCAZUT', 60, 195.00, 'BULLISH');
COMMIT;
