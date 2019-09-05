class CreatePasseadores < ActiveRecord::Migration[6.0]
  def change
    create_table :passeadores do |t|
      t.distinct :email
      t.string :nome
      t.string :sobrenome
      t.string :tel
      t.string :bairro
      t.integer :preco

      t.timestamps
    end
    add_index :passeadores, :email
  end
end
