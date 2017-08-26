class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :nombre
      t.string :apellido
      t.string :cargo

      t.timestamps
    end
  end
end
