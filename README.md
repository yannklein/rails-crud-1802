# Rails app dev

1. `rails new XXX`

DATA LAYER 

2. `rails g model Restaurant name rating:integer` creates the migration files and the model file
3. `rails db:migrate` (to undo `rails db:rollback`)
4. Optional: `rails g migration addAddressToRestaurants address:string` add column to table
5. Optional : `rails g migration removeNameFromRestaurants name` remove column to table
6. Add validations in the Model
7. Check model in `rails c`
8. `rails db:seed` 

CRUD 

9. Routes `verb "path", to: "controller#action", as: "prefix"`
10. `rails g controller restaurants` create controller
11. Build the view