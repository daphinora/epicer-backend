# Total Annihilation
User.destroy_all
Menu.destroy_all
UserMenu.destroy_all
Recipe.destroy_all
MenuRecipe.destroy_all
Ingredient.destroy_all
RecipeIngredient.destroy_all

# Users
jack = User.create(username: "jackm", password: "passwordlol")
josh = User.create(username: "gotro", password: "notpassword")

# Menus
july_one = Menu.create(week: "5 July 2020 - 11 July 2020")
july_two = Menu.create(week: "12 July 2020 - 18 July 2020")

# Recipes
recipe_one = Recipe.create(title: "Recipe One", cook_time: "45 minutes", image: "url here", instructions: "First, cook the thing. Second, eat the thing. Repeat as necessary.")
recipe_two = Recipe.create(title: "Recipe Two", cook_time: "90 minutes", image: "url here", instructions: "First, cook the thing. Second, eat the thing. Repeat as necessary.")

# Ingredients
ingredient_one = Ingredient.create(name: "eggs", image: "egg url here")
ingredient_two = Ingredient.create(name: "butter", image: "butter image thing here")

# UserMenus
UserMenu.create(user_id: jack.id, menu_id: july_one.id)
UserMenu.create(user_id: josh.id, menu_id: july_two.id)

# MenuRecipes
MenuRecipe.create(menu_id: july_one.id, recipe_id: recipe_one.id, date: "8 July 2020", meal: "breakfast", weekday: "Wednesday")
MenuRecipe.create(menu_id: july_two.id, recipe_id: recipe_two.id, date: "12 July 2020", meal: "snack", weekday: "Sunday")

# RecipeIngredients
RecipeIngredient.create(recipe_id: recipe_one.id, ingredient_id: ingredient_one.id, amount: "4")
RecipeIngredient.create(recipe_id: recipe_two.id, ingredient_id: ingredient_two.id, amount: "2 tbsp")

