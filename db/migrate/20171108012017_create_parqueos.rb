class CreateParqueos < ActiveRecord::Migration[5.1]
  def change
    create_table :parqueos do |t|
      t.boolean :estado
      t.string :tipo
      t.datetime :fecha

      t.timestamps
    end
  end
end
