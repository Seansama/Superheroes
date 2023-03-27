# SUPERHEROES

This is an API that tracks superheroes and their awesome super powers.

## Getting Started

_For those that intend to make contributions or modify this project to suit their needs._

To get started with the app, clone the repo and then install the needed gems: `bundle install`.

Next, migrate the database: `rails db:migrate`.

Seed the database with some initial data: `rails db:seed`.

Finally, start the server: `rails server`.

You can then access the API at `http://localhost:3000/`.

## API Live link

_In case you just want to connect the API to a frontend solution without interacting with the API code itself_:

https://superheroes-a7fu.onrender.com/

## API Endpoints

The following endpoints are available in the API:

### Hero

- **GET** `/hero/:id` - Retrieves a specific hero.
- **GET** `/hero/` - Retrieves all heroes saved in the database.

### Powers

- **PATCH** `/power/:id` - Updates power name and description.
- **GET** `/power/:id` - Retrieves a specific superpower.
- **GET** `/hero/` - Retrieves all superpowers saved in the database.

### HeroPower

- **POST** `/hero_power` - This route should create a new `HeroPower` that is associated with an
  existing `Power` and `Hero`



_This project has been done by:_

Shaun Mwangi

**This project is open source under an MIT open source licence.**