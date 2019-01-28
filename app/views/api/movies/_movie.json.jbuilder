json.extract! movie, :id, :name, :year, :thumbnail, :director, :main_star, :description, :created_at, :updated_at
json.url api_movie_url(movie, format: :json)
