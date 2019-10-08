class CreateDailyLives < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_lives do |t|
      t.datetime :wake_up_time
      t.datetime :bed_time
      t.integer :feeling
      t.text :comment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
