class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :raca
      t.string :nome
      t.integer :idade

      t.timestamps
    end
  end
end
