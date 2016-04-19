class CreateInitialDatabase < ActiveRecord::Migration
  def change
    create_table 'publishers' do |t|
      t.string 'name'
      t.string 'phone'
      t.string 'address'
      t.string 'city'
      t.string 'state'
      t.string 'zipcode'
    end
    create_table 'books' do |t|
      t.string 'isbn'
      t.string 'title'
      t.text 'description'
      t.binary 'thumbnail'
      t.integer 'publisher_id'
    end
    add_foreign_key :books, :publishers
    
    create_table 'authors' do |t|
      t.string 'fname'
      t.string 'lname'
    end
    create_join_table :authors, :books
    
    create_table 'users' do |t|
      t.string 'name'
      t.string 'email'
      t.string 'phone'
      t.boolean 'email_verified'
      t.boolean 'is_admin'
      t.timestamps
    end
    create_table 'sell_listings' do |t|
      t.decimal 'price'
      t.integer 'condition' # enumerated field: http://stackoverflow.com/questions/4282710/how-do-i-describe-an-enumeration-column-in-a-rails-3-migration
      t.text 'notes'
      t.integer 'book_id'
      t.boolean 'is_hardcover'
      t.timestamps
    end
    add_foreign_key :sell_listings, :books
    add_foreign_key :sell_listings, :users

  end
end
