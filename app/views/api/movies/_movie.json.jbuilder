json.extract! movie, :id, :name, :year, :director, :main_star, :description

json.thumbnail rails_blob_url(movie.thumbnail) if movie.thumbnail.attachment

json.gentres movie.gentres, :name

json.created_at movie.created_at.to_i
json.updated_at movie.updated_at.to_i
