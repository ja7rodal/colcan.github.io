class CreateReceipts < ActiveRecord::Migration[5.0]
  def change
    create_table :receipts do |t|
      t.references :client, foreign_key: true
      t.integer :amount
      t.references :user, foreign_key: true
      t.integer :temperature

      t.timestamps
    end
  end
end
