# Testing-And-TDD

This project focuses on testing and Test-Driven Development (TDD) using Ruby on Rails. The application's tests are designed to enforce the database schema restrictions and ensure proper validation of the seed data entered. By implementing rigorous testing practices, the application aims to maintain data integrity and safeguard against potential issues.


## Database Diagram

![image](https://github.com/mlouellette/Testing-And-TDD/assets/112026857/378306f2-6eaa-4b5f-8768-d58d9f6aafd4)

## Restrictions

`Table users {
  id int [pk]
  name varchar [not null]
  email varchar [not null]
  encrypted_password varchar [not null]
  reset_password_token varchar
  reset_password_sent_at varchar
  remember_created_at varchar
  created_at datetime
  updated_at datetime
}


Table addresses {
  id int [pk]
  street_address varchar [not null]
  city varchar [not null]
  postal_code varchar [not null]
  created_at datetime
  updated_at datetime
}


Table employees {
  id int [pk]
  user_id int [not null, unique]
  address_id int [not null]
  phone varchar [not null]
  email varchar
  created_at datetime
  updated_at datetime
}


Table restaurants {
  id int [pk]
  user_id int [not null]
  address_id int [not null, unique]
  phone varchar [not null]
  email varchar
  name varchar [not null]
  price_range int [not null, default: 1] // 1-3
  active boolean [not null, default: true]
  created_at datetime
  updated_at datetime
}


Table customers {
  id int [pk]
  user_id int [not null, unique]
  address_id int [not null]
  phone varchar [not null]
  email varchar
  active boolean [not null, default: true]
  created_at datetime
  updated_at datetime
}



Table products {
  id int [pk]
  restaurant_id int [not null]
  name varchar [not null]
  description varchar
  cost int [not null] // >= 0
  created_at datetime
  updated_at datetime
}


// pending, in progress, delivered
Table order_statuses {
  id int [pk]
  name varchar [not null]
  created_at datetime
  updated_at datetime
}

Table orders {
  id int [pk]
  restaurant_id int [not null]
  customer_id int [not null]
  order_status_id int [not null]
  restaurant_rating int // 1-5
  created_at datetime
  updated_at datetime
}

/*
  - Cannot create two product_orders with the same product_id for the same order
  - Must belong to the same restaurant as the order
*/

Table product_orders {
  id int [pk]
  product_id int [not null]
  order_id int [not null]
  product_quantity int [not null] // > 0
  product_unit_cost int [not null] // >= 0
  created_at datetime
  updated_at datetime
}`




