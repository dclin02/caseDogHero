class Cliente < ApplicationRecord
    has_many :dogs, dependent: :destroy
end
