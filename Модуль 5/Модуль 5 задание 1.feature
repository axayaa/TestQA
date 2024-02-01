#language: ru

@tree

Функционал: заполнение справочника Номенклатура

Как Тестировщик я хочу
заполнить справочник Номенклатура
чтобы он был заполнен  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: заполнение справочника Номенклатура

	И я запоминаю значение выражения '0' в переменную "Шаг"
	И я делаю 10 раз
		И я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
		И я запоминаю значение выражения '"Товар" + " " + $Шаг$' в переменную "Наименование"
		И я проверяю или создаю для справочника "Items" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor' | 'ItemID' | 'PackageUnit' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| '{"e1cib/data/Catalog.Items?ref=" + StrReplace(New UUID, "-", "")}' | 'False'        |        | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f687a' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | ''       | ''       | ''            | '$Наименование$' | ''                 | ''               | ''               |          |          |          |          |         |

