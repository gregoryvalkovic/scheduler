class RemoveIdFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :id
  end
end
