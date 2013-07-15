class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :screenname
      t.string :description
      t.string :location
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end
