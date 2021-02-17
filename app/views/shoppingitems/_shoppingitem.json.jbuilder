json.extract! shoppingitem, :id, :email, :item_name, :price, :item_number, :created_at, :updated_at
json.url shoppingitem_url(shoppingitem, format: :json)
