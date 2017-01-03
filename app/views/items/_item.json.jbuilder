json.extract! item, :id, :title, :description, :tags, :duedate, :user_id, :status, :created_at, :updated_at
json.url item_url(item, format: :json)