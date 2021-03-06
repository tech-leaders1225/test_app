json.extract! admin_user_post, :id, :title, :body, :created_at, :updated_at
json.url admin_user_post_url(admin_user_post, format: :json)
