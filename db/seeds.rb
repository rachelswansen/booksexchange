# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@publishers = []
10.times do
    @publishers << Publisher.create(name: Faker::Book.publisher, phone: Faker::PhoneNumber.phone_number, address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zipcode: Faker::Address.zip)
end

@authors = []
50.times do
    @authors << Author.create(fname: Faker::Name.first_name, lname: Faker::Name.last_name)
end

@books = []
100.times do
   @books << book = Book.create(isbn: Faker::Code.isbn, title: Faker::Book.title, description: Faker::Lorem.paragraph, publisher: @publishers.sample)
   book.authors << @authors.sample
end

@users = []
50.times do
   @users << User.create(name: Faker::Internet.user_name, email: Faker::Internet.safe_email, is_admin: false, phone: Faker::PhoneNumber.phone_number, email_verified: [true,true,true,true,true,true,false].sample, created_at: Faker::Time.between(100.days.ago, Date.today)) 
end

1000.times do
   SellListing.create(price: Faker::Commerce.price, condition: [0,1,2,3].sample, notes: Faker::Lorem.paragraph, is_hardcover: [true,false].sample, created_at: Faker::Time.between(100.days.ago, Date.today), book_id: @books.sample.id, user_id: @users.sample.id) 
end