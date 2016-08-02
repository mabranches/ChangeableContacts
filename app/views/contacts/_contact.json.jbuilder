json.extract! contact, :id, :name, :email, :user_id, :extra, :created_at, :updated_at
json.url contact_url(contact, format: :json)