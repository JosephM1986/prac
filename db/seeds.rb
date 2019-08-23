# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Person.create(first_name: 'Paul', last_name: 'Smith', assessment_count: 5, organisation_id: 1)
Person.create(first_name: 'Andrew', last_name: 'Baker', assessment_count: 0, organisation_id: 2)
Person.create(first_name: 'Michael', last_name: 'Clarke', assessment_count: 14, organisation_id: 3)
Person.create(first_name: 'David', last_name: 'Cline', assessment_count: 3, organisation_id: 1)
Person.create(first_name: 'Adam', last_name: 'Broadbent', assessment_count: 0, organisation_id: 2)
