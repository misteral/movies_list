json.extract! movie, :id, :name, :year, :director, :main_star, :description, :created_at, :updated_at
json.url api_movie_url(movie, format: :json)

json.thumbnail rails_blob_url(movie.thumbnail) if movie.thumbnail.attachment

json.gentres movie.gentres, :name
