class CreateFlashCards < ActiveRecord::Migration
  def change
    rename_table :phrases, :flash_cards
    rename_column :flash_cards, :text, :question
    rename_column :flash_cards, :translation, :answer
  end
end
