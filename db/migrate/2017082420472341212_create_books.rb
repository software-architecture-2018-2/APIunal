class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :nombre
      t.string :autor
      t.string :isbn

      t.timestamps
    end
  end
end
