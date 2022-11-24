class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.text :symbol
      t.string :name
      t.integer :shares
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
