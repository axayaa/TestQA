﻿#language: ru

@tree

Функционал: заполнение полей шапки заказа покупателя

Как Тестировщик я хочу
проверить блокировку поля Контрагенты при невыбранном значении в поле Партнер + заполнение полей Партнер и Соглашение
чтобы пользователь мог корректно заполнить документ  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: заполнение полей шапки заказа покупателя

//И экспорт основных данных

*Открытие формы заказ покупателя (создание)
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	Тогда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку 'Создать'
	Тогда открылось окно 'Заказ покупателя (создание)'

*Проверка недоступности поля Контрагенты при незаполненном поле Партнер
	И в поле 'Партнер' я ввожу текст ''
	И Проверяю шаги на Исключение:
			|'И я открываю выпадающий список с именем "LegalName"'|

*Проверка заполнения партнера Клиент 1 и его соглашения + доступность поля Контрагенты с заполненным полем Партнер
	И я нажимаю кнопку выбора у поля "Партнер"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке:
		| 'Наименование'            |
		| 'Клиент 1 (1 соглашение)' |
	И я нажимаю на кнопку с именем 'FormChoose'
	Тогда открылось окно 'Заказ покупателя (создание) *'
	Тогда элемент формы с именем "Partner" стал равен 'Клиент 1 (1 соглашение)'
	Тогда элемент формы с именем "Agreement" стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'
	И я открываю выпадающий список с именем "LegalName"

*Проверка заполнения партнера Клиент 2 и его соглашений
	И я нажимаю кнопку выбора у поля "Партнер"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке:
		| 'Наименование'            |
		| 'Клиент 2 (2 соглашения)' |
	И я нажимаю на кнопку с именем 'FormChoose'
	Тогда открылось окно 'Заказ покупателя (создание) *'
	Тогда элемент формы с именем "Agreement" стал равен ''
	И я нажимаю кнопку выбора у поля "Соглашение"
	Тогда открылось окно 'Соглашения'
	И в таблице "List" я перехожу к строке:
		| 'Наименование'                                        |
		| 'Индивидуальное соглашение 2 (расчет по соглашениям)' |
	И в таблице "List" я активизирую поле "Наименование"
	И я нажимаю на кнопку с именем 'FormChoose'
	Тогда открылось окно 'Табличная часть товаров будет обновлена'
	И я нажимаю на кнопку 'ОК'
	Когда открылось окно 'Заказ покупателя (создание) *'
	Тогда элемент формы с именем "Partner" стал равен 'Клиент 2 (2 соглашения)'
	Тогда элемент формы с именем "Agreement" стал равен 'Индивидуальное соглашение 2 (расчет по соглашениям)'
	И я нажимаю кнопку выбора у поля "Соглашение"
	Тогда открылось окно 'Соглашения'
	И в таблице "List" я перехожу к строке:
		| 'Наименование'                                        |
		| 'Индивидуальное соглашение 1 (расчет по соглашениям)' |
	И в таблице "List" я активизирую поле "Наименование"
	И я нажимаю на кнопку с именем 'FormChoose'
	Когда открылось окно 'Заказ покупателя (создание) *'
	Тогда элемент формы с именем "Agreement" стал равен 'Индивидуальное соглашение 1 (расчет по соглашениям)'

*Проверка заполнения партнера Клиент и поставщик и его соглашения
	И я нажимаю кнопку выбора у поля "Партнер"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке:
		| 'Наименование'       |
		| 'Клиент и поставщик' |
	И я нажимаю на кнопку с именем 'FormChoose'
	Тогда открылось окно 'Заказ покупателя (создание) *'
	Тогда элемент формы с именем "Partner" стал равен 'Клиент и поставщик'
	Тогда элемент формы с именем "Agreement" стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'

*Проверка заполнения партнера Розничный покупатель и его соглашения
	И я нажимаю кнопку выбора у поля "Партнер"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке:
		| 'Наименование'         |
		| 'Розничный покупатель' |
	И в таблице "List" я активизирую поле "Наименование"
	И я нажимаю на кнопку с именем 'FormChoose'
	Тогда открылось окно 'Табличная часть товаров будет обновлена'
	И я нажимаю на кнопку 'ОК'
	Тогда открылось окно 'Заказ покупателя (создание) *'
	Тогда элемент формы с именем "Partner" стал равен 'Розничный покупатель'
	Тогда элемент формы с именем "Agreement" стал равен 'Розничное'

*Проверка заполнения партнера Розничный клиент 1 и его соглашения
	И я нажимаю кнопку выбора у поля "Партнер"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке:
		| 'Наименование'       |
		| 'Розничный клиент 1' |
	И я нажимаю на кнопку с именем 'FormChoose'
	Тогда открылось окно 'Заказ покупателя (создание) *'
	Тогда элемент формы с именем "Partner" стал равен 'Розничный клиент 1'
	Тогда элемент формы с именем "Agreement" стал равен 'Розничный клиент 1'

