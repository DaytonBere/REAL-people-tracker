class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :permissions
      t.string :name
      t.string :tags

      t.timestamps
    end
  end
end
