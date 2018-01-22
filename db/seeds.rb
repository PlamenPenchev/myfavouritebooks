# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Seed the RottenPotatoes DB with some movies.
more_books = [
  {:title => 'Lord of the Rings', :genre => 'Action and Adventure',
    :publish_date => '29-Jul-1954', :isbn => 'aqq12aa'},
  {:title => 'The Green Mile', :genre => 'Drama',
    :publish_date => '13-Aug-1996', :isbn => 'aw122aa'},
  {:title => 'Lords of the Sith', :genre => 'Science fiction',
    :publish_date => '10-Aug-2011', :isbn => 'aw555aa'},
  {:title => 'A song of Ice and Fire', :genre => 'Mystery',
    :publish_date => '13-Jul-1996', :isbn => 'ccc12aa'},
  {:title => 'It', :genre => 'Horror',
    :publish_date => '13-Jan-1986', :isbn => 'jju12aa'},
  {:title => 'Beautiful Distaster', :genre => 'Romance',
    :publish_date => '11-Feb-1981', :isbn => 'jra44aa'}
]

more_books.each do |book|
  Book.create!(book)
end