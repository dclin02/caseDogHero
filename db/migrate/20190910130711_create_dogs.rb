class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :raca
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
