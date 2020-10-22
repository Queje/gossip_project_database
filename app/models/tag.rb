class Tag < ApplicationRecord
    has_many :gossips, through: :taglist
end
