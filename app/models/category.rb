class Category < ApplicationRecord
    has_many :event_category
    has_many :events, through: :event_category
end
