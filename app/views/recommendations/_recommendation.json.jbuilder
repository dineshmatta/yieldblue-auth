json.extract! recommendation, :id, :url, :keywords, :video_urls, :video_ids, :created_at, :updated_at
json.url recommendation_url(recommendation, format: :json)