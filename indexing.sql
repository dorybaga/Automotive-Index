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

-- \timing

-- SELECT DISTINCT make_title FROM car_models
-- WHERE make_code = 'LAM';
-- -- time: 37.227 ms

-- SELECT DISTINCT model_title FROM car_models
-- WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
-- -- time: 27.092 ms

-- SELECT make_code, model_code, model_title, year FROM car_models
-- WHERE make_code = 'LAM';
-- -- time 27.049 ms

-- SELECT * FROM car_models
-- WHERE year BETWEEN 2010 AND 2015;
-- -- time 77.553 ms

-- SELECT * FROM car_models
-- WHERE year = 2010;
-- -- time 36.454

\timing

SELECT DISTINCT make_title FROM car_models
WHERE make_code = 'LAM';
-- initial time: 37.227 ms
-- after idx: 1.841 ms

SELECT DISTINCT model_title FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
-- initial time: 27.092 ms
-- after idx: 0.827 ms

SELECT make_code, model_code, model_title, year FROM car_models
WHERE make_code = 'LAM';
-- initial time 27.049 ms
-- after idx: 0.944 ms

SELECT * FROM car_models
WHERE year BETWEEN 2010 AND 2015;
-- initial time 77.553 ms
-- after idx: 76.504 ms

SELECT * FROM car_models
WHERE year = 2010;
-- time 36.454
-- after idx: 41.662

\c dorybaga