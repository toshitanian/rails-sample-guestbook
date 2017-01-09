json.extract! guestbook, :id, :name, :message, :created_at, :updated_at
json.url guestbook_url(guestbook, format: :json)