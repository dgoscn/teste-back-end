class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
    add_index :leads, :email, unique: true
  end
end
