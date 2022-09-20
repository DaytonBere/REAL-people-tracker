class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.integer :userID
      t.bigint :phoneNumber
      t.string :linkedinLink
      t.string :email
      t.string :instagramLink

      t.timestamps
    end
  end
end
