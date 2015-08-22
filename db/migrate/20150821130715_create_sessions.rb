class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      # option 'index:' adds the corresponding 'belonged to' foreign keys (same as 'add_index')
      t.belongs_to :individual_user, index: true, foreign_key: true
      t.belongs_to :business_user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
