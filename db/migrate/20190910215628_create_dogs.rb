class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.references :cliente, null: false, foreign_key: true
      t.string :nome
      t.string :raca
      t.string :genero
      t.integer :idade
      t.string :porte
      t.boolean :castrado
      t.boolean :raiva
      t.boolean :vacinas

      t.timestamps
    end
  end
end
