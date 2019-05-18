class Province < ApplicationRecord
    has_many :towns
    has_many :areas
    has_many :streets
end
