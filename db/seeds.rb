# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# coding: utf-8

require "csv"

#mst_prefs
CSV.foreach('db/mst_prefs.csv') do |row|
  MstPref.create(:id => row[0], :name => row[1])
end