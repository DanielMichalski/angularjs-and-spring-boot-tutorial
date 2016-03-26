----------------------------------------------------------------------
-- users
----------------------------------------------------------------------

INSERT INTO users (id, name) VALUES
  (nextval('users_id_seq'), 'Konstantyn Kowalski'),
  (nextval('users_id_seq'), 'Łukasz Pawłowski'),
  (nextval('users_id_seq'), 'Zofia Jabłońska'),
  (nextval('users_id_seq'), 'Izydor Pawłowski'),
  (nextval('users_id_seq'), 'Sylwester Kozłowski');


----------------------------------------------------------------------
-- company_sectors
----------------------------------------------------------------------

INSERT INTO company_sectors (id, name) VALUES
  (nextval('company_sectors_id_seq'), 'Sklep internetowy'),
  (nextval('company_sectors_id_seq'), 'Wydawnictwo'),
  (nextval('company_sectors_id_seq'), 'Producent odzieży'),
  (nextval('company_sectors_id_seq'), 'Producent suplementów'),
  (nextval('company_sectors_id_seq'), 'Agencja reklamowa');


----------------------------------------------------------------------
-- clients
----------------------------------------------------------------------

INSERT INTO clients (id, company_name, contact_name, contact_phone, contact_email, account_manager_id, notes, sector_id)
VALUES
  (nextval('clients_id_seq'), 'Lorem ipsum dolor', 'Michalina Kwiatkowska', '53 790 92 21', 'MichalinaKwiatkowska@dayrep.com', 1,
   'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
   5),
  (nextval('clients_id_seq'), 'Aenean massa', 'Kazimierz Wiśniewski', '88 434 60 33', 'KazimierzWiniewski@dayrep.com', 2, NULL, 4),
  (nextval('clients_id_seq'), 'Nullam dictum', 'Miłosław Duda', '67 431 58 98', 'MiosawDuda@dayrep.com', 3, 'Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.', 3),
  (nextval('clients_id_seq'), 'Aliquam lorem ante', 'Konstancja Gorska', '78 931 86 71', 'KonstancjaGorska@dayrep.com', 4, 'In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.', 2),
  (nextval('clients_id_seq'), 'Maecenas tempus', 'Józef Woźniak', '79 319 44 99', 'JzefWoniak@teleworm.us', 5, NULL, 1),
  (nextval('clients_id_seq'), 'Donec sodales sagittis', 'Janek Czerwinski', '66 796 79 49', 'JanekCzerwinski@jourrapide.com', 1, 'Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu.', 1),
  (nextval('clients_id_seq'), 'Vestibulum purus', 'Hanna Kozłowska', '53 858 22 59', 'HannaKozowska@jourrapide.com', 2, NULL, 2),
  (nextval('clients_id_seq'), 'Etiam sit', 'Walery Czarnecki', '67 677 77 97', 'WaleryCzarnecki@jourrapide.com', 3, 'Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.', 3),
  (nextval('clients_id_seq'), 'Cras id dui', 'Wacław Grabowski', '78 772 75 31', 'WacawGrabowski@rhyta.com', 4, 'Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.', 4),
  (nextval('clients_id_seq'), 'Duis arcu tortor', 'Augustyna Sokołowska', '69 268 36 68', 'AugustynaSokoowska@armyspy.com', 5, NULL, 5),
  (nextval('clients_id_seq'), 'Phasellus accumsan', 'Jarek Kucharski', '78 357 89 49', 'JarekKucharski@armyspy.com', 1, 'Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 5),
  (nextval('clients_id_seq'), 'Pellentesque posuere', 'Felicja Olszewska', '88 706 67 24', 'FelicjaOlszewska@jourrapide.com', 2, NULL, 3),
  (nextval('clients_id_seq'), 'Aenean viverra', 'Berta Ostrowska', '53 218 38 56', 'BertaOstrowska@teleworm.us', 3, NULL, 1),
  (nextval('clients_id_seq'), 'Phasellus gravida', 'Augustyn Nowicki', '79 435 93 31', 'AugustynNowicki@armyspy.com', 4, NULL, 2),
  (nextval('clients_id_seq'), 'Phasellus volutpat', 'Urszula Kucharska', '79 532 30 44', 'UrszulaKucharska@jourrapide.com', 5,
   'Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.', 4);


----------------------------------------------------------------------
-- contact_timeline
----------------------------------------------------------------------

INSERT INTO contact_timeline (id, client_id, user_id, contact_date, contact_type, notes) VALUES
  (nextval('contact_timeline_id_seq'), 1, 1, '2015-01-12 12:00:00', 'phone', 'Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies. Curabitur et ligula.'),
  (nextval('contact_timeline_id_seq'), 1, 2, '2015-01-14 18:30:00', 'envelope-o', 'Ut molestie a, ultricies porta urna. Vestibulum commodo volutpat a, convallis ac.'),
  (nextval('contact_timeline_id_seq'), 1, 3, '2015-01-16 13:15:00', 'phone', 'Phasellus fermentum in, dolor. Pellentesque facilisis. Nulla imperdiet sit amet magna. Vestibulum dapibus, mauris nec malesuada fames ac turpis velit, rhoncus eu.'),
  (nextval('contact_timeline_id_seq'), 1, 2, '2015-01-16 15:00:00', 'users', 'Quisque lorem tortor fringilla sed, vestibulum id, eleifend justo vel bibendum sapien massa ac turpis faucibus orci luctus non, consectetuer lobortis quis, varius in, purus.'),
  (nextval('contact_timeline_id_seq'), 1, 1, '2015-01-20 12:00:00', 'file-text-o', 'Cum sociis natoque penatibus et ultrices volutpat. Nullam wisi ultricies.');
