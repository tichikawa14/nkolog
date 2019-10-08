class CreateConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :conditions do |t|
      t.float :weight
      t.float :body_fat_percentage
      t.integer :menstruation
      t.float :body_temperature
      t.integer :feeling
      t.integer :skin
      t.references :user, null: false, foreign_key: true
      t.references :daily_life, null: false, foreign_key: true

      t.timestamps
    end
  end
end
