class Town < ApplicationRecord
    belongs_to :province
    has_many :areas
    has_many :streets
end
