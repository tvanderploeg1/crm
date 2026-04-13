# Challenge 6 CRM App

Rails CRM assignment app for WEBD-3011.

## Assignment Scope

This project implements Challenge 6 requirements:

- Customer model with:
  - `full_name` (string)
  - `phone_number` (string)
  - `email_address` (string)
  - `notes` (text)
- ActiveAdmin CRUD for customers
- ActiveStorage image attachment for customer photos
- Validations (minimum: `full_name` presence)
- Customer listing pages using a shared partial:
  - `/` (all customers)
  - `/customers/alphabetized`
  - `/customers/missing_email`

## Tech Stack

- Ruby on Rails 8
- SQLite (development)
- ActiveAdmin + Devise
- ActiveStorage
- Bulma (CDN for customer-facing pages)

## Setup

1. Install dependencies:
   - `bundle install`
2. Create and migrate the database:
   - `bin/rails db:create db:migrate`
3. Start the server:
   - `bin/rails s`

## Admin Access

- Admin login path: `/admin`
- Create an admin user if needed:
  - `bin/rails console`
  - `AdminUser.create!(email: "admin@example.com", password: "password123", password_confirmation: "password123")`

## Feature Notes

- Shared customer card partial: `app/views/customers/_customer.html.erb`
- Customer pages in `app/views/customers/` render the shared partial for consistency.
- Missing-email finder is intended to return customers with no email value.
