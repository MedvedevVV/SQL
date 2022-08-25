SELECT * FROM `default` WHERE Type IN ('One', 'Two') ORDER BY Time_stamp DESC LIMIT 100
-- Все события таблицы default с типом One и Two, отсортированные по столбцу Time_stamp в порядке убывания. Количество отображаемых строк – 100.

SELECT * FROM `default` WHERE BytesIn BETWEEN 2000 AND 3000 ORDER BY Time_stamp ASC LIMIT 100
-- Все события таблицы default, для которых в поле BytesIn значение полученного трафика находится в диапазоне от 2000 до 3000 байт, отсортированные по столбцу Time_stamp в порядке возрастания. Количество отображаемых строк – 100.

SELECT * FROM `default` WHERE Note LIKE '%ssipusers%' ORDER BY Time_stamp DESC LIMIT 100
-- Все события таблицы default, которые в поле Note содержат данные, соответствующие заданному шаблону %sipusers% в нижнем регистре, и отсортированы по столбцу Time_stamp в порядке убывания. Количество отображаемых строк – 100.

SELECT * FROM `default` WHERE inSubnet(DeviceAddr, '192.168.0.0/16') ORDER BY Time_stamp DESC LIMIT 100
-- Все события таблицы default для узлов, которые входят в подсеть 192.168.0.0/16, отсортированные по столбцу Time_stamp в порядке убывания. Количество отображаемых строк – 100.

SELECT * FROM `default` WHERE match(Note, 'sip.*') ORDER BY Time_stamp DESC LIMIT 100
-- Все события таблицы default, которые в поле Note содержат текст, соответствующий шаблону sip.*, и отсортированы по столбцу Time_stamp в порядке убывания. Количество отображаемых строк – 100.

SELECT max(outgoing_traffic) / 1024 FROM `default`
-- Максимальный размер исходящего трафика (КБ).

SELECT count(ID) AS "Count", SourcePort AS "Port" FROM `default` GROUP BY SourcePort ORDER BY Port ASC LIMIT 100
-- Кол-во событий и N порта. События сгруппированны по номеру порта, также используется соритировка по столбцу Port в порядке возрастания. Количество отображаемых строк – 100.Столбцу ID в таблице событий присвоено имя Count, столбцу SourcePort присвоено имя Port.
