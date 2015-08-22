class CreateBusinessUsers < ActiveRecord::Migration
  def change
    create_table :business_users do |t|
      t.belongs_to :company, index: true, foreign_key: true
      t.string :name
      t.integer :phone_number
      t.string :email
      t.string :password
      t.timestamps null: false
    end
  end
end
