# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

resp = HTTParty.get("https://api.spoonacular.com/recipes/random?number=20&apiKey=#{ENV['API_KEY']}")

resp["recipes"].each do |recipe|
    hash = {
        title: recipe['title'],
        time: recipe['readyInMinutes'],
        image: recipe['image'],
        instructions: recipe['instructions']
    }
    Recipe.create(hash)
end