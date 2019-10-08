class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :gender
      t.date :birthday
      t.boolean :black_list

      t.timestamps
    end
  end
end
