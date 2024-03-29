<?php
$_['extension_name']                                = 'Admin Quick Edit PRO';

// Heading
$_['heading_title']                                 = '<i class="fa fa-pencil" style="font-size:14px;color:#F7951D;"></i> <strong>' . $_['extension_name'] . '</strong>' . (defined("AQE_STATUS") ? '<span style="display:inline-block;margin-left:20px;">' . (AQE_STATUS ? '<i style="color:#3c763d">[ Включено ]</i>' : '<i style="color:#a94442">[ Отключено ]</i>') . '</span>' : '');

// Buttons
$_['button_apply']                                  = 'Применить';
$_['button_upgrade']                                = 'Обновить версию';

// Tabs
$_['tab_settings']                                  = 'Настройки';
$_['tab_support']                                   = 'Поддержка';
$_['tab_about']                                     = 'Информация';
$_['tab_general']                                   = 'Главная';
$_['tab_faq']                                       = 'FAQ';
$_['tab_services']                                  = 'Обслуживание';
$_['tab_changelog']                                 = 'Изменения';
$_['tab_extension']                                 = 'Информация';
$_['tab_catalog']                                   = 'Каталог';
$_['tab_sales']                                     = 'Заказы';
$_['tab_categories']                                = 'Категории';
$_['tab_filters']                                   = 'Фильтры';
$_['tab_recurrings']                                = 'Пр-ли период-ких плат-й';
$_['tab_products']                                  = 'Товары';
$_['tab_attributes']                                = 'Атрибуты';
$_['tab_attribute_groups']                          = 'Группы атрибутов';
$_['tab_options']                                   = 'Опции';
$_['tab_manufacturers']                             = 'Производители';
$_['tab_downloads']                                 = 'Загрузки';
$_['tab_reviews']                                   = 'Отзывы';
$_['tab_information']                               = 'Информ-ные страницы';
$_['tab_coupons']                                   = 'Купоны';
$_['tab_customers']                                 = 'Покупатели';
$_['tab_orders']                                    = 'Заказы';
$_['tab_returns']                                   = 'Возвраты';
$_['tab_voucher_themes']                            = 'Виды сертификатов';
$_['tab_vouchers']                                  = 'Подарочные сертификаты';
$_['tab_campaigns']                                 = 'Маркетинговые компании';
$_['tab_affiliates']                                = 'Партнеры';
$_['tab_customer']                                  = 'Покупатели';

// Text
$_['text_success_upgrade']                          = '<strong>Выполнено!</strong> Модуль ' . $_['extension_name'] . 'обновлен до версии <strong>%s</strong>!';
$_['text_success_update']                           = '<strong>Выполнено!</strong> Настройки модуля ' . $_['extension_name'] . ' изменины!';
$_['text_success_hooks_update']                     = '<strong>Выполнено!</strong> ' . $_['extension_name'] . ' event hooks изменено!';
$_['text_toggle_navigation']                        = 'Переключить навигацию';
$_['text_license']                                  = 'Лицензия';
$_['text_extension_information']                    = 'Информация о модуле';
$_['text_legal_notice']                             = 'Legal notice';
$_['text_terms']                                    = 'Terms &amp; Conditions';
$_['text_support_subject']                          = $_['extension_name'] . ' support needed';
$_['text_license_text']                             = 'Please be aware that this product has a <strong>per-installation license</strong>, meaning you can use it <em>only on a single OpenCart installation</em>. <strong>You will need to purchase a separate license for each installation you wish to use this extension on.</strong>';
$_['text_other_extensions']                         = 'If you like this extension you might also be interested in <a href="%s" class="alert-link" target="_blank">my other extensions</a>.';
$_['text_module']                                   = 'Модули';
$_['text_faq']                                      = 'Часто задаваемые вопросы';
$_['text_display']                                  = 'Отображение';
$_['text_editable']                                 = 'Редактирование';
$_['text_column_name']                              = 'Название столбца';
$_['text_button']                                   = 'Кнопка';
$_['text_single_click']                             = 'Один клик';
$_['text_double_click']                             = 'Двойной клик';
$_['text_select_all']                               = 'Выбрать / Отменить выбор всех';
$_['text_saving']                                   = 'Сохранение ...';
$_['text_upgrading']                                = 'Обновление ...';
$_['text_canceling']                                = 'Отмена ...';
$_['text_loading']                                  = 'Загрузка ...';

// Column texts
$_['txt_action']                                    = 'Быстрые действия';
$_['txt_address_1']                                 = 'Адрес';
$_['txt_address_2']                                 = 'доп. строка';
$_['txt_amount']                                    = 'Количество';
$_['txt_approved']                                  = 'Подтверждено';
$_['txt_attribute_group']                           = 'Группа атрибутов';
$_['txt_author']                                    = 'Автор';
$_['txt_balance']                                   = 'Баланс';
$_['txt_bottom']                                    = 'Отображение в футере';
$_['txt_categories']                                = 'Категории';
$_['txt_category']                                  = 'Категория';
$_['txt_city']                                      = 'Город';
$_['txt_clicks']                                    = 'Клики';
$_['txt_code']                                      = 'Код';
$_['txt_column']                                    = 'Столбцы';
$_['txt_comment']                                   = 'Комментарий';
$_['txt_commission']                                = 'Комиссия';
$_['txt_company']                                   = 'Компания';
$_['txt_country']                                   = 'Страна';
$_['txt_customer']                                  = 'Покупатель';
$_['txt_customer_group']                            = 'Группа покупателей';
$_['txt_customer_id']                               = 'Номер покупателя';
$_['txt_cycle']                                     = 'Цикл';
$_['txt_date_added']                                = 'Дата добавления';
$_['txt_date_available']                            = 'Дата поступления';
$_['txt_date_end']                                  = 'Дата окончания';
$_['txt_date_modified']                             = 'Дата изменения';
$_['txt_date_ordered']                              = 'Дата заказа';
$_['txt_date_start']                                = 'Дата начала';
$_['txt_description']                               = 'Описание';
$_['txt_discount']                                  = 'Дисконт';
$_['txt_download']                                  = 'Загрузки';
$_['txt_duration']                                  = 'Продолжительность';
$_['txt_ean']                                       = 'EAN';
$_['txt_email']                                     = 'E-Mail';
$_['txt_fax']                                       = 'Факс';
$_['txt_filename']                                  = 'Имя файла';
$_['txt_filter']                                    = 'Фильтры';
$_['txt_frequency']                                 = 'Частота';
$_['txt_from_email']                                = 'E-mail отправителя';
$_['txt_from_name']                                 = 'Имя отправителя';
$_['txt_group_name']                                = 'Название группы';
$_['txt_height']                                    = 'Высота';
$_['txt_image']                                     = 'Изображение';
$_['txt_id']                                        = 'Номер';
$_['txt_ip']                                        = 'IP Адрес';
$_['txt_isbn']                                      = 'ISBN';
$_['txt_jan']                                       = 'JAN';
$_['txt_length']                                    = 'Длинна';
$_['txt_length_class']                              = 'Единица длины';
$_['txt_location']                                  = 'Склад';
$_['txt_logged']                                    = 'Зарегистрированный покупатель';
$_['txt_manufacturer']                              = 'Производитель';
$_['txt_mask']                                      = 'Маска';
$_['txt_message']                                   = 'Сообщение';
$_['txt_minimum']                                   = 'Минимальное количество';
$_['txt_model']                                     = 'Модель';
$_['txt_mpn']                                       = 'MPN';
$_['txt_name']                                      = 'Наименование';
$_['txt_newsletter']                                = 'Информационный бюллетень';
$_['txt_opened']                                    = 'Открыто';
$_['txt_option_value']                              = 'Значение опции';
$_['txt_order_id']                                  = 'Номер заказа';
$_['txt_orders']                                    = 'Заказы';
$_['txt_parent']                                    = 'Родительская категория';
$_['txt_points']                                    = 'Баллы';
$_['txt_postcode']                                  = 'Индекс';
$_['txt_price']                                     = 'Цена';
$_['txt_product']                                   = 'Товар';
$_['txt_product_id']                                = 'Номер товара';
$_['txt_products']                                  = 'Товары';
$_['txt_quantity']                                  = 'Количество';
$_['txt_rating']                                    = 'Рейтинг';
$_['txt_region']                                    = 'Область';
$_['txt_requires_shipping']                         = 'Требуется доставка';
$_['txt_return_id']                                 = 'Номер возврата';
$_['txt_return_action']                             = 'Return Action';
$_['txt_return_reason']                             = 'Return Reason';
$_['txt_return_status']                             = 'Return Status';
$_['txt_safe']                                      = 'Safe';
$_['txt_selector']                                  = '<selector>';
$_['txt_seo']                                       = 'ЧПУ адрес';
$_['txt_shipping']                                  = 'Доставка';
$_['txt_sku']                                       = 'Артикул';
$_['txt_sort_order']                                = 'Порядок сортировки';
$_['txt_status']                                    = 'Статус';
$_['txt_stock_status']                              = 'Если нет на складе';
$_['txt_store']                                     = 'Магазин';
$_['txt_subtract']                                  = 'Вычитать со склада';
$_['txt_tag']                                       = 'Тэги товара';
$_['txt_tax']                                       = 'Налоги';
$_['txt_tax_class']                                 = 'Вид налога';
$_['txt_telephone']                                 = 'Телефон';
$_['txt_text']                                      = 'Текст';
$_['txt_theme']                                     = 'Тема';
$_['txt_title']                                     = 'Заголовок Title';
$_['txt_to_email']                                  = 'E-mail получателя';
$_['txt_to_name']                                   = 'Имя получателя';
$_['txt_top']                                       = 'Главное меню';
$_['txt_total']                                     = 'Общее количество';
$_['txt_tracking_code']                             = 'Tracking Code';
$_['txt_trial_cycle']                               = 'Trial cycle';
$_['txt_trial_duration']                            = 'Trial duration';
$_['txt_trial_frequency']                           = 'Trial frequency';
$_['txt_trial_price']                               = 'Trial price';
$_['txt_trial_status']                              = 'Trial status';
$_['txt_type']                                      = 'Тип';
$_['txt_upc']                                       = 'UPC';
$_['txt_uses_customer']                             = 'Uses Per Customer';
$_['txt_uses_total']                                = 'Uses Per Coupon';
$_['txt_view_in_store']                             = 'Смотреть в магазине';
$_['txt_viewed']                                    = 'Просмотреные';
$_['txt_weight']                                    = 'Вес';
$_['txt_weight_class']                              = 'Единица веса';
$_['txt_width']                                     = 'Ширина';

// Action column texts
$_['txt_attributes']                                = 'Атрибуты (A)';
$_['txt_discounts']                                 = 'Дисконт (D)';
$_['txt_images']                                    = 'Изображения (I)';
$_['txt_filters']                                   = 'Фильтры (F)';
$_['txt_options']                                   = 'Опции (O)';
$_['txt_recurrings']                                = 'Возвраты (C)';
$_['txt_related']                                   = 'Похожие товары (R)';
$_['txt_specials']                                  = 'Скидки (S)';
$_['txt_descriptions']                              = 'Описание (T)';
$_['txt_view']                                      = 'Просмотр (V)';
$_['txt_edit']                                      = 'Редактирование (E)';

// Help texts
$_['help_match_anywhere']                           = 'Match filter strings anywhere in the phrase (e.g. \'cinema\' will match \'Apple Cinema 30"\')';
$_['help_alternate_row_colour']                     = 'Alternate the table row colours in the list views of categories, products, etc.';
$_['help_row_hover_highlighting']                   = 'Highlight the table row when you mouse over it in the list views of categories, products, etc.';
$_['help_highlight_status']                         = 'Display disabled items in red in categories, products, reviews, informations, customers and coupons list views.';
$_['help_interval_filter']                          = 'Enable interval filter for numeric and temporal values like quantity, sort order, amount, date available etc (e.g. \'0.5 < 1.3\', \'1 <= 103\', \'< 3000\' or \'3 <=\').';
$_['help_batch_edit']                               = 'Edit the current value for all selected items. This sets the default value for batch editing control on <em>Catalog</em>, <em>Sales</em> and <em>Marketing</em> pages.';
$_['help_filter_sub_category']                      = 'Used with category filtering.';
$_['help_columns']                                  = 'Select which columns to show, in which order they appear and whether they are editable in place.';
$_['help_actions']                                  = 'Select which actions to show for the Action column.';

// Entry
$_['entry_extension_status']                        = 'Статус модуля';
$_['entry_installed_version']                       = 'Установленная версия';
$_['entry_extension_name']                          = 'Название';
$_['entry_extension_compatibility']                 = 'Совместимость';
$_['entry_extension_store_url']                     = 'Адрес магазина';
$_['entry_copyright_notice']                        = 'Copyright notice';
$_['entry_match_anywhere']                          = 'Искать совпадения везде';
$_['entry_alternate_row_colour']                    = 'Подсвечивать значения';
$_['entry_row_hover_highlighting']                  = 'Подсветка строк при наведении';
$_['entry_highlight_status']                        = 'Подсвечивать выключенные строки';
$_['entry_interval_filter']                         = 'Interval filtering';
$_['entry_quick_edit_on']                           = 'Быстрое редактирование включено';
$_['entry_batch_edit']                              = 'Групповое редактирование';
$_['entry_list_view_image_size']                    = 'Размер изображений в списке (Д x Ш)';
$_['entry_fields']                                  = 'Настройки столбцов';
$_['entry_actions']                                 = 'Настройки быстрых действий';
$_['entry_single_language_editing']                 = 'Редактировать только однин язык';
$_['entry_catalog_categories_status']               = 'Каталог -> Редактирование категорий';
$_['entry_catalog_products_status']                 = 'Каталог -> Редактирование товаров';
$_['entry_catalog_products_filter_sub_category']    = 'Искать в подкатегориях';
$_['entry_catalog_recurrings_status']               = 'Каталог -> Редактирование периодических платежей';
$_['entry_catalog_filters_status']                  = 'Каталог -> Редактирование фильтров';
$_['entry_catalog_attributes_status']               = 'Каталог -> Редактирование атрибутов';
$_['entry_catalog_attribute_groups_status']         = 'Каталог -> Редактирование групп атрибутов';
$_['entry_catalog_options_status']                  = 'Каталог -> Редактирование опций';
$_['entry_catalog_manufacturers_status']            = 'Каталог -> Редактирование производителей';
$_['entry_catalog_downloads_status']                = 'Каталог -> Редактирование загрузок';
$_['entry_catalog_reviews_status']                  = 'Каталог -> Редактирование отзывов';
$_['entry_catalog_information_status']              = 'Каталог -> Редактирование страниц';
$_['entry_customer_customers_status']               = 'Покупатели -> Редактирование покупателей';
$_['entry_sales_orders_status']                     = 'Заказы -> Статус заказов';
$_['entry_sales_returns_status']                    = 'Заказы -> Статус возвратов';
$_['entry_sales_voucher_themes_status']             = 'Заказы -> Voucher Themes status';
$_['entry_sales_vouchers_status']                   = 'Заказы -> Gift Vouchers status';
$_['entry_marketing_campaigns_status']              = 'Маркетинг -> Marketing status';
$_['entry_marketing_affiliates_status']             = 'Маркетинг -> Affiliates status';
$_['entry_marketing_coupons_status']                = 'Маркетинг -> Статус купонов';
$_['entry_notify_customer']                         = 'Оповещать покупателя';

// Error
$_['error_permission']                              = '<strong>Ошибка!</strong> У Вас нет разрешения на редактирование модуля ' . $_['extension_name'] . '!';
$_['error_warning']                                 = '<strong>Внимание!</strong> Внимательно проверьте форму на ошибки!';
$_['error_unsaved_settings']                        = '<strong>Внимание!</strong> Обновление значений не выполнено! Пожалуйста, сохраните значения.';
$_['error_version']                                 = '<strong>Info!</strong> ' . $_['extension_name'] . ' version <strong>%s</strong> installation files found. You need to upgrade ' . $_['extension_name'] . '!';
$_['error_ajax_request']                            = 'Ошибка AJAX!';
$_['error_image_width']                             = 'Image width must be positive integer greater than 0!';
$_['error_image_height']                            = 'Image height must be positive integer greater than 0!';
$_['error_modification']                            = '<strong>Внимание!</strong> The extension OCMOD script is not working. Please check that it exists, is not disabled and the modification cache has been updated. The extension will not work without this script.';
$_['error_php_version']                             = '<strong>Ошибка!</strong> Модуль не совместим с Вашей текущей версией PHP - %s. Пожалуйста, обновите PHP до версии <strong>%s</strong>.';
