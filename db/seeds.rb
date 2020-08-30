# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
RecipeIngredient.destroy_all
UserAllergicTo.destroy_all

3.times do 
    User.create(name: Faker::Name.name)
end

3.times do 
    User.create(name: Faker::Name.name) 
end

10.times do 
    Recipe.create(name: Faker::Food.dish, user: User.all.sample )
end

10.times do
    Ingredient.create(name: Faker::Food.ingredient) 
end
1.times do 
    Ingredient.create(name: 'peanuts')
end

5.times do 
    RecipeIngredient.create(recipe: Recipe.all.sample, ingredient: Ingredient.all.sample)
end

10.times do 
    UserAllergicTo.create(user: User.all.sample, ingredient: Ingredient.all.sample)
end

#UserAllergicTo.create(user: User.all.sample, ingredient_id: 29)