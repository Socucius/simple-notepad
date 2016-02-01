class AddShareUrlToNotepad < ActiveRecord::Migration
  def change
    add_column :notepads, :share_url, :string
  end
end
