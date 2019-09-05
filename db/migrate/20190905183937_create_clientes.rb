class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.distinct :email
      t.string :nome
      t.string :sobrenome
      t.string :tel
      t.string :endereco

      t.timestamps
    end
    add_index :clientes, :email
  end
end
