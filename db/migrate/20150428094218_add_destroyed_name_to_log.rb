class AddDestroyedNameToLog < ActiveRecord::Migration
  def change
    add_column :logs, :destroyed_title, :string
  end
end
