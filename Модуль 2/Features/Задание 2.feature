﻿#language: ru

@tree

Функционал: расчет общего количества документа Заказ при изменении количества товаров

Как Администратор я хочу
изменять количество товаров
чтобы проверить корректность расчета общего количества документа Заказ

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Расчет общего количества заказа при изменении количества товаров

*Открытие формы создания документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
*Заполнение обязательных полей документа
	И Заполнение шапки документа Заказ
*Добавление товара и проверка корректности общего количества
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '0'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
		И я нажимаю на кнопку с именем 'ФормаСписок'				
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Босоножки'    |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '1'
*Изменение количества товаров и проверка корректности общего количества
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '2'
*Добавление второго товара, изменение его количества и проверка корректности общего количества
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
		И я нажимаю на кнопку с именем 'ФормаСписок'				
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Туфли'    |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'	
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '3'
	И в таблице "Товары" я перехожу к строке:
		| 'Товар' |
		| 'Туфли'    |
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '0'
	И в таблице "Товары" я завершаю редактирование строки
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '2'
*Добавление услуги и проверка корректности общего количества
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
		И я нажимаю на кнопку с именем 'ФормаСписок'				
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Доставка'    |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'	
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '3'
*Удаление товаров и проверка корректности общего количества
	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюВыделитьВсе' на элементе формы с именем "Товары"
	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюУдалить' на элементе формы с именем "Товары"
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '0'		

		