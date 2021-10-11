class CreateContactFile < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_files do |t|
      t.string :filename
      t.string :url

      t.timestamps
    end
  end
end
