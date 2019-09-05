class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :nome
      t.string :raca

      t.timestamps
    end
  end
end
