class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :text
      t.integer :user_id
      t.boolean :is_open
      t.integer :serial

      t.timestamps
    end
  end
end
