use pharma;

insert warehouses
(`name`)
values
('Moscow-NorthWest'),
('Moscow-South'),
('MoscowOblast-Podolsk'),
('MoscowOblast-Khimki'),
('Saint-Petersbourg-East'),
('Saint-Petersbourg-West');

insert warehouse_products
(warehouse_id, medication, manufacturer, quantity, price, prescription)
-- Стратегический запас базовых ежедневных медикаментов есть на каждом складе, количество и цена зависит от региона 
values
(1, 'Aspirin', 'Bayer', 5000, 357, 0),
(2, 'Aspirin', 'Bayer', 5000, 357, 0),
(3, 'Aspirin', 'Bayer', 1500, 320, 0),
(4, 'Aspirin', 'Bayer', 1500, 320, 0),
(5, 'Aspirin', 'Bayer', 4000, 347, 0),
(6, 'Aspirin', 'Bayer', 4000, 347, 0),
(1, 'Ibuprofen', 'Medisorb', 4500, 105, 0),
(2, 'Ibuprofen', 'Medisorb', 4500, 105, 0),
(3, 'Ibuprofen', 'Medisorb', 900, 96, 0),
(4, 'Ibuprofen', 'Medisorb', 900, 96, 0),
(5, 'Ibuprofen', 'Medisorb', 3000, 101, 0),
(6, 'Ibuprofen', 'Medisorb', 3000, 101, 0),
(1, 'Panthenol', 'Avanta', 5000, 253, 0),
(2, 'Panthenol', 'Avanta', 5000, 253, 0),
(3, 'Panthenol', 'Avanta', 1500, 200, 0),
(4, 'Panthenol', 'Avanta', 1500, 200, 0),
(5, 'Panthenol', 'Avanta', 4000, 240, 0),
(6, 'Panthenol', 'Avanta', 4000, 240, 0),
(1, 'Strepsils', 'Reckitt Benckiser Healthcare', 4500, 241, 0),
(2, 'Strepsils', 'Reckitt Benckiser Healthcare', 4500, 241, 0),
(3, 'Strepsils', 'Reckitt Benckiser Healthcare', 900, 230, 0),
(4, 'Strepsils', 'Reckitt Benckiser Healthcare', 900, 230, 0),
(5, 'Strepsils', 'Reckitt Benckiser Healthcare', 3000, 235, 0),
(6, 'Strepsils', 'Reckitt Benckiser Healthcare', 3000, 235, 0),
(1, 'Validol', 'Lumi', 2000, 67, 0),
(2, 'Validol', 'Lumi', 2000, 67, 0),
(3, 'Validol', 'Lumi', 500, 57, 0),
(4, 'Validol', 'Lumi', 500, 57, 0),
(5, 'Validol', 'Lumi', 1250, 61, 0),
(6, 'Validol', 'Lumi', 1250, 61, 0),
-- Также, некоторые особые медикаменты разбросаны по складам в арбитрарном порядке и количестве ввиду своей специфики
(1, 'Travacsal', 'Grotex', 34, 559, 1),
(2, 'Phloxepol', 'Polfa', 11, 67, 1),
(3, 'Ophtarynth', 'Grotex', 55, 316, 0),
(4, 'Panthoprasol', 'SUN Pharmaceutikal Industries', 91, 349, 0),
(5, 'Orcevel', 'Wellpharm', 40, 1167, 0),
(6, 'Vytrydynol', 'Wellpharm', 8, 349, 1),
(1, 'Rapamun', 'Phizer', 1, 52213, 1),
(2, 'Atazanavir', 'Polfa', 6, 2776, 1),
(3, 'Telzir', 'Glasco Wellcom Operations', 3, 12507, 1),
(4, 'Kalidavir', 'Pharmasintez', 11, 3663, 1),
(5, 'Normomed', 'OHFK', 13, 786, 1),
(6, 'Havryx', 'SmithKlein', 2, 1539, 1);

insert stores(`name`, location)
values
('Аптека #71', 'Войковская 122'),
('Аптека #56', 'Чертановская 17'),
('Аптека #4', 'Юных Ленинцев 3'),
('Аптека #89', 'Химки-21'),
('Аптека #11','Рижский проезд 44'),
('Аптека #121','Ворошилова 8'),
('Офис', 'Кутузовский 112');

insert store_products(store_id, medication, manufacturer, quantity, price)
values 
(1, 'Aspirin', 'Bayer', 50, 357),
(2, 'Aspirin', 'Bayer', 50, 357),
(3, 'Aspirin', 'Bayer', 15, 320),
(4, 'Aspirin', 'Bayer', 15, 320),
(5, 'Aspirin', 'Bayer', 40, 347),
(6, 'Aspirin', 'Bayer', 40, 347),
(1, 'Ibuprofen', 'Medisorb', 45, 105),
(2, 'Ibuprofen', 'Medisorb', 45, 105),
(3, 'Ibuprofen', 'Medisorb', 10, 96),
(4, 'Ibuprofen', 'Medisorb', 10, 96),
(5, 'Ibuprofen', 'Medisorb', 45, 101),
(6, 'Ibuprofen', 'Medisorb', 45, 101),
(1, 'Panthenol', 'Avanta', 50, 253),
(2, 'Panthenol', 'Avanta', 50, 253),
(3, 'Panthenol', 'Avanta', 15, 200),
(4, 'Panthenol', 'Avanta', 15, 200),
(5, 'Panthenol', 'Avanta', 40, 240),
(6, 'Panthenol', 'Avanta', 40, 240),
(1, 'Strepsils', 'Reckitt Benckiser Healthcare', 45, 241),
(2, 'Strepsils', 'Reckitt Benckiser Healthcare', 40, 241),
(3, 'Strepsils', 'Reckitt Benckiser Healthcare', 10, 230),
(4, 'Strepsils', 'Reckitt Benckiser Healthcare', 10, 230),
(5, 'Strepsils', 'Reckitt Benckiser Healthcare', 30, 235),
(6, 'Strepsils', 'Reckitt Benckiser Healthcare', 30, 235),
(1, 'Validol', 'Lumi', 20, 67),
(2, 'Validol', 'Lumi', 20, 67),
(3, 'Validol', 'Lumi', 15, 57),
(4, 'Validol', 'Lumi', 15, 57),
(5, 'Validol', 'Lumi', 20, 61),
(6, 'Validol', 'Lumi', 20, 61)
-- Особые медикаменты поставляются в аптеки только по предварительному заказу, поэтому по дефолту их нет в наличии в самих аптеках
;

insert employees (firstname, lastname, position, store_id, email, phone)
values
('Алексей','Колесников', 'Генеральный Директор', '7', 'a.kolesnikov@pharma.com', 79778823211),
('Борис','Гаврилов', 'HR', '7', 'b.gavrilov@pharma.com', 79771363211),
('Виталий','Соколов', 'Менеджер по закупкам', '7', 'v.sokolov@pharma.com', 79771234214),
('Галина','Понасенкова', 'Бухгалтер', '7', 'g.ponasenkova@pharma.com', 79771553251),
('Дмитрий','Лакиев', 'PR-менеджер', '7', 'd.luckiev@pharma.com', 79331217697),
('Евгения','Скрипник', 'Продавец-фармацевт', '1', 'e.skrypnik@pharma.com', 79274632987),
('Жанна','Алисевич', 'Продавец-фармацевт', '1', 'j.alisevich@pharma.com', 79274322517),
('Зоя','Валова', 'Продавец-фармацевт', '2', 'z.valova@pharma.com', 79114356987),
('Илья','Петров', 'Продавец-фармацевт', '2', 'i.petrov@pharma.com', 79856624515),
('Кирилл','Астаховский', 'Продавец-фармаценвт', '3', 'k.astahovsky@pharma.com', 79658854210),
('Леонид','Сайфуллин', 'Продавец-фармаценвт', '3', 'l.saifullin@pharma.com', 79135548951),
('Максим','Скавронский', 'Продавец-фармаценвт', '4', 'm.skavronsky@pharma.com', 79996548527),
('Николай','Дергунов', 'Продавец-фармаценвт', '4', 'n.dergunov@pharma.com', 79038546692),
('Ольга','Лимонова', 'Продавец-фармаценвт', '5', 'o.limonova@pharma.com', 79055788426),
('Петр','Ильин', 'Продавец-фармаценвт', '5', 'p.ilyin@pharma.com', 79176893451),
('Регина','Тодоренко', 'Продавец-фармаценвт', '6', 'r.todorenko@pharma.com', 79685772159),
('Саргис','Айрапетян', 'Продавец-фармаценвт', '6', 's.airapetyan@pharma.com', 79063326584),
('Татьяна','Малинова', 'Агент', '7', 't.malinova@pharma.com', 79776952261),
('Ульрих','Буревестник', 'Агент', '7', 'u.burevestnik@pharma.com', 79771369211),
('Федор','Простоквашин', 'Агент', '7', 'f.prostokvashin@pharma.com', 79771363991);

insert customers (firstname, lastname, age, telephone, insurance, address, allergies)
values
('Андрей', 'Савенков', 22, 79998322111, 'Медикейд', 'Академика Анохина 4', 'Желатин'),
('Барри', 'Васильев', 45, 79562669853, 'Икар', 'Академика Анохина 4', 'нет'),
('Вениамин', 'Порошенко', 17, 79548875612, 'БКБС', 'Академика Анохина 4', 'нет'),
('Геннадий', 'Крокодилов', 32, 79776589451, 'Аетна', 'Академика Анохина 4', 'нет'),
('Дарья', 'Рихтер', 21, 79956326654, 'Сигна', 'Академика Анохина 4', 'Пыьца'),
('Егор', 'Марков', 65, 971555488751, 'Медикейр', 'Академика Анохина 4', 'Пенициллин'),
('Жозефина', 'Полеонова', 61, 79035648574, 'Сигна', 'Академика Анохина 4', 'нет'),
('Зина', 'Резенко', 59, 79856587412, 'Аетна', 'Академика Анохина 4', 'нет'),
('Ирина', 'Отшибова', 52, 79898322111, 'Юнайтед Хелскер', 'Академика Анохина 4', 'Парацетамол, опиум'),
('Константин', 'Дворов', 56, 79775469111, 'Медикейд', 'Академика Анохина 4', 'нет');

insert calls (telephone_number, `date`, duration, recording, agent_id, customer_id)
values
(79998322111, '2020-07-11 17:11', '06:03', LOAD_FILE('0711201711.mp3'), 18, 1),
(79562669853, '2020-07-10 14:13', '04:41', LOAD_FILE('0710201413.mp3'), 19, 2),
(79548875612, '2020-06-20 11:15', '03:59', LOAD_FILE('0620201115.mp3'), 20, 3),
(79776589451, '2020-06-03 14:11', '04:20', LOAD_FILE('0603201411.mp3'), 18, 4),
(79956326654, '2020-06-01 16:26', '04:49', LOAD_FILE('0601201626.mp3'), 19, 5),
(971555488751, '2020-05-26 12:01', '05:31', LOAD_FILE('0526201201.mp3'), 20, 6),
(79035648574, '2020-05-22 18:00', '03:55', LOAD_FILE('0522201800.mp3'), 18, 7),
(79856587412, '2020-05-17 11:12', '08:40', LOAD_FILE('0517201112.mp3'), 19, 8),
(79898322111, '2020-05-12 15:32', '01:22', LOAD_FILE('0512201532.mp3'), 20, 9);

insert sales (customer_id, agent_id, `status`)
values
(1, 18, 'Отправлен'),
(2, 8, 'В обработке'),
(3, 11, 'Отправлен'),
(4, 14, 'Отправлен'),
(5, 19, 'Отменен'),
(6, 11, 'В обработке'),
(7, 10, 'Отменен'),
(8, 15, 'В обработке'),
(9, 11, 'Отправлен'),
(10, 19, 'Отправлен'),
(1, 20, 'Отправлен');

insert sales_medications (sale_id, medication_id, quantity)
values
(1, 19, 2),
(1, 13, 1),
(1, 25, 1),
(2, 2, 1),
(2, 8, 4),
(2, 14, 1),
(3, 3, 2),
(3, 9, 1),
(3, 15, 1),
(4, 16, 1),
(4, 22, 2),
(4, 28, 1),
(5, 11, 2),
(5, 17, 3),
(5, 23, 1),
(6, 18, 1),
(6, 24, 1),
(6, 30, 1);

insert phone_sales_medications (sale_id, medication_id, quantity)
values 
(1, 31, 2),
(10, 40, 1),
(11, 36, 3);

insert discounts (customer_id, discount, valid_from, invalid_after)
values
(2, 0.4, '2020-01-01 00:00', '2120-01-01 00:00'), -- за использование отечественной страховки (бог в помощь)
(3, 0.5, '2020-01-01 00:00', '2022-04-29 00:00'), -- до совершеннолетия аптека будет помогать Вениамину не умирать со скидкой 50%
(6, 0.3, '2020-01-01 00:00', '2120-01-01 00:00'), -- люди старше 60 получают скидку 30% как потенциальные постоянные покупатели
(7, 0.3, '2020-01-01 00:00', '2120-01-01 00:00');

insert dispatched (sale_id, customer_id, warehouse_id)
values 
(1, 1, 1),
(10, 10, 2),
(11, 1, 3);