class CreateFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :films do |t|
      t.string :nombre
      t.string :director
      t.integer :anio

      t.timestamps
    end
  end
end
