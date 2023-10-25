-- SQL-команды для создания таблиц
CREATE TABLE customers_data
(
	customer_id SERIAL PRIMARY KEY,
	company_name VARCHAR(50) NOT NULL,
	contact_name VARCHAR(30)
);

CREATE TABLE employees_data
(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	title VARCHAR(50),
	birth_date DATE NOT NULL,
	notes TEXT NOT NULL
);

CREATE TABLE orders_data
(
	order_id SERIAL PRIMARY KEY,
	customer_id INT NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers_data(customer_id),
	employee_id INT NOT NULL,
	FOREIGN KEY(employee_id) REFERENCES employees_data(employee_id),
	ship_city VARCHAR(30) NOT NULL
);
