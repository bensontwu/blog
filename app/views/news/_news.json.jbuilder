json.extract! news, :id, :name, :title, :content, :created_at, :updated_at
json.url news_url(news, format: :json)
