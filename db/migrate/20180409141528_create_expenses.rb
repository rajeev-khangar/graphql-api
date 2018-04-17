class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :item_name
      t.string :description
      t.float :cost
      t.integer :quantity
      t.float :subtotal, default: 0.00
      t.date :date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
