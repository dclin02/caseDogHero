class Dog < ApplicationRecord
  belongs_to :cliente
  validates :nome, :raca, :genero, :idade, presence: true
  validates :nome, :raca, length: { maximum: 50}
end
