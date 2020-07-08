class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :category
      t.datetime :date
      t.string :address
      t.string :description
      t.string :image
      t.string :stage
      t.boolean :public
      t.integer :organization_id
      t.integer :qrcode

      t.timestamps
    end
  end
end
