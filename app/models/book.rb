class Book < ActiveRecord::Base
    belongs_to :publisher
    has_and_belongs_to_many :authors
    has_many :sell_listings
end
