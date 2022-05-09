class CreateIndustries < ActiveRecord::Migration[7.0]
  def change
    create_table :industries do |t|
      t.string :name
      t.string :email
      t.integer :registration_number

      t.timestamps
    end
    add_index :industries, :email, unique: true
  end
end
