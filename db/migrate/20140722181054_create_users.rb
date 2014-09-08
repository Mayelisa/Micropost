class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :ide
      t.string :email
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
