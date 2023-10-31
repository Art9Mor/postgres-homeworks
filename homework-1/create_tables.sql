-- SQL-команды для создания таблиц
CREATE TABLE customers
(
	customer_id VARCHAR(10) PRIMARY KEY,
	company_name VARCHAR(50) NOT NULL,
	contact_name VARCHAR(30)
);

CREATE TABLE employees
(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	title VARCHAR(50),
	birth_date DATE NOT NULL,
	notes TEXT NOT NULL
);

CREATE TABLE orders
(
	order_id SMALLINT PRIMARY KEY,
  customer_id VARCHAR(10) NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
	employee_id INT NOT NULL,
	FOREIGN KEY(employee_id) REFERENCES employees(employee_id),
	ship_city VARCHAR(30) NOT NULL
);

