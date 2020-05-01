# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserRecipe.destroy_all
User.destroy_all
Recipe.destroy_all

user1 = User.create(name: 'Jorge', age: 30, location: 'New Jersey', email: '1234@gmail.com')
user2 = User.create(name: 'Komal', age: 29, location: 'New York', email: '123@gmail.com')
user3 = User.create(name: 'Tom', age: 34, location: 'California', email: '111@gmail.com')

recipes1 = Recipe.create(name: 'Barbequed Pineapple', ingredients: '1 fresh pineapple,  1/4 cup rum,  1/4 cup brown sugar,  1 tablespoon ground cinnamon, 1/2 teaspoon ground ginger,  1/2 teaspoon ground nutmeg,  1/2 teaspoon ground cloves', description: 'Barbecued Pineapple! Serve in a bowl or a banana boat with pineapple on either side and a scoop of ice cream or two on top and drizzled with juice glaze. You may substitute juice (1/2 cup) for the sugar and rum part of the marinade.', image: 'https://i.ytimg.com/vi/BvUUM4M09iM/maxresdefault.jpg', video: ' https://www.allrecipes.com/video/8469/barbecued-pineapple/?internalSource=picture_play&referringId=22332&referringContentType=Recipe')
recipes2 = Recipe.create(name: 'Black Forest Cheesecakes', ingredients: '12 chocolate sandwich cookies with creme filling, 2 (8 ounce) packages cream cheese softened,  ¾ cup white sugar , ⅓ cup baking cocoa, 1 teaspoon vanilla extract, 2 eggs, 1 (21 ounce) can cherry pie filling, ½ cup whipped topping ', description: 'Creamy chocolate cheesecake on an Oreo crust, topped with sweetened whipped cream and homemade cherry pie filling', image: ' https://houseofnasheats.com/wp-content/uploads/2018/12/Black-Forest-Cheesecake-30.jpg', video: 'https://www.allrecipes.com/video/7971/black-forest-cheesecakes/')
recipes3 = Recipe.create(name: 'Mac and Cheese', ingredients: 'Kosher Salt, Vegetable Oil, 1 pound of elbow macaroni or cavatappi, 1 quart milk, 8 tablespoons(1 stick) unsalted butter, divided, ½ Cup all-purpose flour, 12 ounces Gruyere, grated (4 cups), 8 ounces extra-sharp Cheddar, grated (2 cups), ½ teaspoon freshly grounded black pepper, ½ teaspoon ground nutmeg, ¾ pound fresh tomatoes (4 small), 1 ½ cups fresh white bread crumbs (5 slices crust removed)', description: 'mac n cheese in the US and Canadian English, macaroni cheese in the United Kingdom—is a dish of English origin, consisting of cooked macaroni pasta and a cheese sauce, most commonly cheddar. It can also incorporate other ingredients, such as breadcrumbs, meat and vegetables', image: 'https://www.dinneratthezoo.com/wp-content/uploads/2019/04/lobster-mac-and-cheese-6.jpg', video: 'https://youtu.be/sxfHm8Dygyc')

user_recipes1 = UserRecipe.create(user_id: user1, recipe_id: recipes1, favorites: false, likes: false, creator: true) 
user_recipes2 = UserRecipe.create(user_id: user2, recipe_id: recipes2, favorites: false, likes: false, creator: true)
user_recipes3 = UserRecipe.create(user_id: user3, recipe_id: recipes3, favorites: false, likes: false, creator: true)
user_recipes4 = UserRecipe.create(user_id: user1, recipe_id: recipes2, favorites: true, likes: false, creator: false)
user_recipes5 = UserRecipe.create(user_id: user2, recipe_id: recipes3, favorites: false, likes: true, creator: false)
user_recipes6 = UserRecipe.create(user_id: user3, recipe_id: recipes1, favorites: true, likes: true, creator: false)