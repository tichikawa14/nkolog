class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :type
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.references :daily_life, null: false, foreign_key: true

      t.timestamps
    end
  end
end
