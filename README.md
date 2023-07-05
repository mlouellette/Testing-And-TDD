# Testing-And-TDD

## Description

This project focuses on testing and Test-Driven Development (TDD) using Ruby on Rails. The application's tests are designed to enforce the database schema restrictions and ensure proper validation of the seed data entered. By implementing rigorous testing practices, the application aims to maintain data integrity and safeguard against potential issues.

## Controllers

This project includes the following controllers and routes for the API:

- `AuthController`: Handles user authentication.
- `OrdersController`: Manages orders and their statuses.
- `ProductsController`: Handles product-related operations.
- `RestaurantsController`: Manages restaurants and their information.

## Getting Started

To get started with the project, follow the instructions below.

### Prerequisites

- [Add Prerequisites]

### Installation

1. Dependencies
   
   `bundle install`
   
2. Migrate the database:
   
   `rails db:migrate`

3. Run the server:

   `rails server`

## API Routes
The API provides the following routes:

- POST /api/login: Authenticates a user.
- POST /api/order/:id/status: Sets the status of an order.
- GET /api/restaurants: Retrieves a list of restaurants.
- GET /api/products: Retrieves a list of products.
- For more details about the API routes, refer to the config/routes.rb file.

## Testing and TDD

To run the tests, use the following command:
`rails test`

## Database Diagram

![image](https://github.com/mlouellette/Testing-And-TDD/assets/112026857/378306f2-6eaa-4b5f-8768-d58d9f6aafd4)






