json.extract! transaction, :id, :stock_id, :shares, :share_price, :type, :user_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
