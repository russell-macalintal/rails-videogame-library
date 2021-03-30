class CreateConsoleUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :console_users do |t|
      t.integer :console_id
      t.integer :user_id

      t.timestamps
    end
  end
end
