class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :stock_id
      t.integer :shares
      t.numeric :share_price
      t.text :type
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
