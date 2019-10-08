class CreateStools < ActiveRecord::Migration[6.0]
  def change
    create_table :stools do |t|
      t.integer :softness
      t.integer :color
      t.text :comment
      t.integer :feeling
      t.integer :amount
      t.integer :smell
      t.references :user, null: false, foreign_key: true
      t.references :daily_life, null: false, foreign_key: true

      t.timestamps
    end
  end
end
