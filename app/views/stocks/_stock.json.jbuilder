json.extract! stock, :id, :symbol, :name, :shares, :user_id, :created_at, :updated_at
json.url stock_url(stock, format: :json)
