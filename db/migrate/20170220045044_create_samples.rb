class CreateSamples < ActiveRecord::Migration[5.0]
  def change
    create_table :samples do |t|
      t.integer :sample
      t.integer :quantity
      t.references :receipt, foreign_key: true

      t.timestamps
    end
  end
end
