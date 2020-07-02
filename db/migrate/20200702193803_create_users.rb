class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_digest
      t.string :contact
      t.integer :age
      t.string :supporter
      t.string :role
      t.string :secret_code

      t.timestamps
    end
  end
end
