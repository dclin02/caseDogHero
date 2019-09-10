class Cliente < ApplicationRecord
    has_many :dogs, dependent: :destroy
    validates_each :nome, :sobrenome do |record, attr, value|
        record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
      end
    #validates_each acima copiado da internet para verficação de uppercase na primeira letra dos nomes
    validates :nome, :sobrenome, presence: true
    validates :email, uniqueness: {case_sensitive: false}
    validates_associated :dogs 
end
