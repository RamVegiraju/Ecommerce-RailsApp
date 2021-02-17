class CreateShoppingitems < ActiveRecord::Migration[6.1]
  def change
    create_table :shoppingitems do |t|
      t.string :email
      t.string :item_name
      t.integer :price
      t.integer :item_number

      t.timestamps
    end
  end
end
