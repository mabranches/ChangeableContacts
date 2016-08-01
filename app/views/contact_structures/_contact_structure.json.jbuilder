json.extract! contact_structure, :id, :user_id, :data_type_id, :name, :extra, :created_at, :updated_at
json.url contact_structure_url(contact_structure, format: :json)