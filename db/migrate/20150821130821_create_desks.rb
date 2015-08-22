class CreateDesks < ActiveRecord::Migration
  def change
    create_table :desks do |t|
      t.string :service_type
      t.belongs_to :business_user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
