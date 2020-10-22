class Mailing < ApplicationRecord
    belongs_to :private_message
    has_many :users
end
