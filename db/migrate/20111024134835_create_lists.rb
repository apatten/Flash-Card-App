class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.timestamps
    end
    add_column :phrases, :list_id, :integer
  end
end
