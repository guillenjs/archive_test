json.extract! archive, :id, :title, :archive_type_id, :archive_data, :created_at, :updated_at
json.url archive_url(archive, format: :json)
