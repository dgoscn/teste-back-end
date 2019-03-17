class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :uuid
      t.string :url
      t.string :timestamp

      t.timestamps
    end
  end
end
