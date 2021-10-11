class CreateContactFile < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_files do |t|
      t.string :column_name, null: false
      t.string :column_birthday, null: false
      t.string :column_phone, null: false
      t.string :column_address, null: false
      t.string :column_credit_card, null: false
      t.string :column_franchise, null: false
      t.string :column_email, null: false

      t.timestamps
    end
  end
end
