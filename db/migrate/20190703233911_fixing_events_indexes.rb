class FixingEventsIndexes < ActiveRecord::Migration[5.2]
  def change
    ActiveRecord::Base.connection.indexes(:events).each do |index|
      remove_index :events, name: index.name
    end

    add_index :events, [:user_id, :day, :time], name: "index_events_on_user_id_day_time", unique: true
  end
end
