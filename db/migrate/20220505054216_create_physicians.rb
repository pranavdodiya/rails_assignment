class CreatePhysicians < ActiveRecord::Migration[7.0]
  def change
    create_table :physicians do |t|
      t.string :name
      t.string :email
      t.integer :unique_id

      t.timestamps
    end
    add_index :physicians, :email, unique: true
    add_index :physicians, :unique_id, unique: true
  end
end
