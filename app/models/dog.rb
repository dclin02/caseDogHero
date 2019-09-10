class Dog < ApplicationRecord
  belongs_to :cliente
  validates :nome, :raca, presence: true
end
