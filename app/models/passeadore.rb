class Passeadore < ApplicationRecord
  validates_each :nome, :sobrenome do |record, attr, value|
    record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
  end
  # validates_each acima copiado da internet para verficação de uppercase na primeira letra dos nomes
  validates :nome, :sobrenome, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :nome, :sobrenome, :bairro, length: { maximum: 50 }
  validates :preco, 
  # implementar validacao de preco
end
