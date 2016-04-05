class CreateListings < ActiveRecord::Migration
  def up
    create_table 'listings' do |t|
      t.string 'title'
      t.string 'isbn'
      t.decimal 'price'
      t.text 'description'
      t.boolean 'is_hardcover'
      t.timestamps null: false
    end
  end
  
  def down
    drop_table 'listings'
  end
end
