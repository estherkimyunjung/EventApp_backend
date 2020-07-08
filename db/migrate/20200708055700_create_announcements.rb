class CreateAnnouncements < ActiveRecord::Migration[6.0]
  def change
    create_table :announcements do |t|
      t.integer :event_id
      t.string :message

      t.timestamps
    end
  end
end
