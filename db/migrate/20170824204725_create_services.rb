class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :nombre
      t.string :cargo
      t.integer :edad

      t.timestamps
    end
  end
end
