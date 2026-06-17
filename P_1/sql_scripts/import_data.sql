-- Убедимся, что используем нужную схему
SET search_path TO philately;

-- ==========================
-- Загрузка справочных таблиц
-- ==========================

\echo 'Загрузка fp_types...'
\copy fp_types (fp_type_id, type_name) FROM '/Users/Igor/Desktop/HSE/Study/3_курс/Базы_данных/ДЗ/ДЗ_1/data/fp_types.csv' CSV;

\echo 'Загрузка regions...'
\copy regions (region_id, region_name) FROM '/Users/Igor/Desktop/HSE/Study/3_курс/Базы_данных/ДЗ/ДЗ_1/data/regions.csv' CSV;

\echo 'Загрузка periods...'
\copy periods (period_id, period_name, days_count) FROM '/Users/Igor/Desktop/HSE/Study/3_курс/Базы_данных/ДЗ/ДЗ_1/data/periods.csv' CSV;

-- ==========================
-- Загрузка основных таблиц
-- ==========================

\echo 'Загрузка ufps...'
\copy ufps (ufps_id, ufps_name, region_id, address) FROM '/Users/Igor/Desktop/HSE/Study/3_курс/Базы_данных/ДЗ/ДЗ_1/data/ufps.csv' CSV;

\echo 'Загрузка philatelic_products...'
\copy philatelic_products (product_id, fp_type_id, product_name, issue_date, nominal_value) FROM '/Users/Igor/Desktop/HSE/Study/3_курс/Базы_данных/ДЗ/ДЗ_1/data/philatelic_products.csv' CSV;

\echo 'Загрузка requests...'
\copy requests (request_id, ufps_id, request_date, period_id, status) FROM '/Users/Igor/Desktop/HSE/Study/3_курс/Базы_данных/ДЗ/ДЗ_1/data/requests.csv' CSV;

\echo 'Загрузка request_items...'
\copy request_items (request_item_id, request_id, product_id, quantity) FROM '/Users/Igor/Desktop/HSE/Study/3_курс/Базы_данных/ДЗ/ДЗ_1/data/request_items.csv' CSV;

\echo 'Все данные успешно загружены.'