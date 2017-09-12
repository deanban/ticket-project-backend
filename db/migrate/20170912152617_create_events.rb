class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :event_type
      t.string :state
      t.integer :zip
      t.integer :price
      t.timestamps
    end
  end
end
