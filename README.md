# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

The basic CRUD interface to Products.

You can:
get all products to /v1/products (GET format),
show one product to /v1/products/:id(.:format GET),
create product to /v1/products(.:format POST),         
update product to /v1/products/:id(.:format Patch or Put), 
delete product to /v1/products/:id(.:format Delete)            




Prefix Verb URI Pattern Controller#Action
  v1_products GET    /v1/products(.:format)                                                                   v1/products#index

  POST   /v1/products(.:format)                                                                   v1/products#create

  v1_product GET    /v1/products/:id(.:format)                                                               v1/products#show

  PATCH  /v1/products/:id(.:format)                                                               v1/products#update

  PUT    /v1/products/:id(.:format)                                                               v1/products#update

  DELETE /v1/products/:id(.:format)                                                               v1/products#destroy
