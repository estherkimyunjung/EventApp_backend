class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name, default: "Chat Room"
      t.integer :event_id
      
      t.timestamps
    end
  end
end
