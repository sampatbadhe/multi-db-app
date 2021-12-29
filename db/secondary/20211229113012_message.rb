class Message < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :title
      t.string :body
      t.integer :event_id, null: false

      t.timestamps
    end
  end
end
