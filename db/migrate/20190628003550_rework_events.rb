class ReworkEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :startDate
    remove_column :events, :endDate
    add_column :events, :day, :integer
    add_column :events, :time, :integer
  end
end
