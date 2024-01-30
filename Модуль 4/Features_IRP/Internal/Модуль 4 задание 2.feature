﻿#language: ru

@tree

Функционал: отображение возвратов в отчете Продажи

Как Тестировщик я хочу
проверить отображение возвратов в отчете 
чтобы убедиться в корректности формирования отчета  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: отображение возвратов в отчете Продажи

И экспорт основных данных
И создание документа Возврат товаров от покупателей

*Проведение документа Возврат товаров от покупателей
	И В командном интерфейсе я выбираю 'Продажи' 'Возвраты товаров от покупателей'
	Тогда открылось окно 'Возвраты товаров от покупателей'
	И в таблице "List" я перехожу к строке:
		| 'Дата'                               | 'Номер' |
		| '{Строка(НачалоДня(ТекущаяДата()))}' | '8'     |
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Возврат товаров от покупателя * от *'
	И я нажимаю на кнопку 'Провести и закрыть'
	Тогда открылось окно 'Возвраты товаров от покупателей'
	И Я закрываю окно 'Возвраты товаров от покупателей'

*Открытие и проверка отчета
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Тогда открылось окно 'D2001 Продажи'
	И я нажимаю на кнопку 'Сформировать'
	И табличный документ "Result" содержит строки из макета "Продажи"
		

	