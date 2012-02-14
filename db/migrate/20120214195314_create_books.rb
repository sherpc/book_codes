class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :code
      t.string :name
      t.integer :author_id

      t.timestamps
    end
  end
end
