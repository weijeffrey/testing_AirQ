class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :industry
      t.timestamps null: false
    end
  end
end
