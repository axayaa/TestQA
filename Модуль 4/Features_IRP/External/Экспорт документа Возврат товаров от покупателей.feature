#language: ru
@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: создание документа Возврат товаров от покупателей

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: создание документа Возврат товаров от покупателей

	// Справочник.RowIDs

	И я проверяю или создаю для справочника "RowIDs" объекты:
		| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'Description'                          | 'AgreementSales'                                                     | 'Company'                                                           | 'CurrencySales'                                                      | 'LegalNameSales'                                                    | 'PartnerSales'                                                     | 'PriceIncludeTaxSales' | 'Store'                                                          | 'Unit'                                                          | 'ItemKey'                                                          | 'Branch' | 'Basis'                                                                | 'RowID'                                | 'ProcurementMethod' | 'StoreSender' | 'StoreReceiver' | 'TransactionTypeSC' | 'TransactionTypeGR'                                    | 'TransactionType' | 'Requester' | 'AgreementPurchases' | 'PartnerPurchases' | 'LegalNamePurchases' | 'PriceIncludeTaxPurchases' | 'CurrencyPurchases' |
		| 'e1cib/data/Catalog.RowIDs?ref=80c999eeb5edb39c11eebf4f8b2d9b30' | 'False'        | 30     | 'dfcaa3fd-b7d2-4725-80f9-5bbaf706e131' | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'                 | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b274f' | ''       | 'e1cib/data/Document.SalesReturn?ref=80c999eeb5edb39c11eebf4f8b2d9b31' | 'dfcaa3fd-b7d2-4725-80f9-5bbaf706e131' | ''                  | ''            | ''              | ''                  | 'Enum.GoodsReceiptTransactionTypes.ReturnFromCustomer' | ''                | ''          | ''                   | ''                 | ''                   | 'False'                    | ''                  |

	// Документ.SalesReturn

	И я проверяю или создаю для документа "SalesReturn" объекты:
		| 'Ref'                                                                  | 'DeletionMark' | 'Number' | 'Date'                                  | 'Posted' | 'Agreement'                                                          | 'BaseDocument' | 'Company'                                                           | 'Currency'                                                           | 'DateOfShipment'     | 'LegalName'                                                         | 'ManagerSegment' | 'Partner'                                                          | 'PriceIncludeTax' | 'DueAsAdvance' | 'LegalNameContract' | 'Author'                                                        | 'Branch' | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.SalesReturn?ref=80c999eeb5edb39c11eebf4f8b2d9b31' | 'False'        | 8        | '{Строка(НачалоДня(ТекущаяДата()))}' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | ''             | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | ''               | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'            | 'False'        | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 45000            |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                  | 'Key'                                  | 'Cancel' | 'ItemKey'                                                          | 'Store'                                                          | 'NetAmount' | 'OffersAmount' | 'Price' | 'PriceType'                                             | 'Quantity' | 'TaxAmount' | 'TotalAmount' | 'Unit'                                                          | 'SalesReturnOrder' | 'SalesInvoice' | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'ProfitLossCenter' | 'RevenueType' | 'AdditionalAnalytic' | 'UseGoodsReceipt' | 'ReturnReason' |
		| 'e1cib/data/Document.SalesReturn?ref=80c999eeb5edb39c11eebf4f8b2d9b31' | 'dfcaa3fd-b7d2-4725-80f9-5bbaf706e131' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b274f' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 37500       |                | 15000   | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 3          | 7500       | 45000         | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | ''                 | ''             | 'False'            | 3                    | ''                 | ''            | ''                   | 'True'            | ''             |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                  | 'Key'                                  | 'Tax'                                                           | 'Amount' | 'Analytics' | 'TaxRate'                                                          | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.SalesReturn?ref=80c999eeb5edb39c11eebf4f8b2d9b31' | 'dfcaa3fd-b7d2-4725-80f9-5bbaf706e131' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 12500    | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 'True'                 | 12500          |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                  | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'Key' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.SalesReturn?ref=80c999eeb5edb39c11eebf4f8b2d9b31' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 45000    | 'False'   |
		| 'e1cib/data/Document.SalesReturn?ref=80c999eeb5edb39c11eebf4f8b2d9b31' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 38655    | 'False'   |
		| 'e1cib/data/Document.SalesReturn?ref=80c999eeb5edb39c11eebf4f8b2d9b31' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 45000    | 'False'   |
		| 'e1cib/data/Document.SalesReturn?ref=80c999eeb5edb39c11eebf4f8b2d9b31' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                  | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis' | 'CurrentStep' | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey' |
		| 'e1cib/data/Document.SalesReturn?ref=80c999eeb5edb39c11eebf4f8b2d9b31' | 'dfcaa3fd-b7d2-4725-80f9-5bbaf706e131' | 'dfcaa3fd-b7d2-4725-80f9-5bbaf706e131' | 5          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=GR' | 'e1cib/data/Catalog.RowIDs?ref=80c999eeb5edb39c11eebf4f8b2d9b30' | ''         |


