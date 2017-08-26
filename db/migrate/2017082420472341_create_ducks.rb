class CreateDucks < ActiveRecord::Migration[5.1]
  def change
    create_table :ducks do |t|
      t.string :nombre
      t.string :color
      t.integer :edad

      t.timestamps
    end
  end
end
