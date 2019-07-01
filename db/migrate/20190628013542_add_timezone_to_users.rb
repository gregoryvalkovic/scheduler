class AddTimezoneToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :timezone, :integer, default: 0
  end
end
