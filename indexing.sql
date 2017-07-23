DROP DATABASE IF EXISTS indexed_cars;
DROP USER IF EXISTS indexed_cars_user;

CREATE USER indexed_cars_user;
CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;

\c indexed_cars

\i scripts/car_models.sql

\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql

\timing

SELECT DISTINCT make_title FROM car_models
WHERE make_code = 'LAM';
-- make_title: lamborghini
-- time: 25.426 ms

SELECT DISTINCT model_title FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
-- time: 21.771 ms

SELECT make_code, model_code, model_title, year FROM car_models
WHERE make_code = 'LAM';
-- time 28.476 ms





\timing
\c dorybaga