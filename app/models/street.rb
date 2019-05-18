class Street < ApplicationRecord
    belongs_to :province
    belongs_to :town
    belongs_to :area
end
