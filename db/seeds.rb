gentes = %w[Action Adventure Animation Biography Comedy Crime Documentary
            Drama Fantasy History Horror Musical Mystery Romance Sci-Fi
            Thriller War Western]

gentes.each do |gentre|
  Gentre.create(name: gentre)
end
