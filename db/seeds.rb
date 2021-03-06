# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

CSV.foreach('public/csv/dummy_adress.csv') do |row|
  Facility.create(name: row[0],
                  tel: row[1],
                  postal_code: row[2],
                  prefecture: row[3],
                  adress1: row[4],
                  adress2: row[5],
                  building: row[6])
end
