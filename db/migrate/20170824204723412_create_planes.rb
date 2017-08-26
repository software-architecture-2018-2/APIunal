class CreatePlanes < ActiveRecord::Migration[5.1]
  def change
    create_table :planes do |t|
      t.string :nombre
      t.string :aerolinea
      t.string :origen

      t.timestamps
    end
  end
end
