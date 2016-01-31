class AddBodyToNotepad < ActiveRecord::Migration
  def change
    add_column :notepads, :body, :text
  end
end
