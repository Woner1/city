class Area < ApplicationRecord
    has_many :streets
    belongs_to :province
    belongs_to :town
end
