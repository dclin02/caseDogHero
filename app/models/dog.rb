class Dog < ApplicationRecord
  belongs_to :cliente
  validates :name, :raca, presence: true
end
