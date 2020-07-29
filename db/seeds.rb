# Total Annihilation
User.destroy_all
Menu.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
UserMenu.destroy_all
MenuRecipe.destroy_all
RecipeIngredient.destroy_all

# Users
jack = User.create(username: "jackm", password_digest: "passwordlol")
# josh = User.create(username: "gotro", password_digest: "notpassword")

# Menus
july_one = Menu.create(week: "Jul 27 2020 - Aug 02 2020")

# Recipes
# recipe_one = Recipe.create(title: "Recipe One", cook_time: "45 minutes")
# recipe_two = Recipe.create(title: "Recipe Two", cook_time: "90 minutes")

# Ingredients
# ingredient_one = Ingredient.create(name: "eggs", image: "egg url here")
# ingredient_two = Ingredient.create(name: "butter", image: "butter image thing here")

# UserMenus
UserMenu.create(user_id: jack.id, menu_id: july_one.id)
# UserMenu.create(user_id: josh.id, menu_id: july_two.id)
# UserMenu.create(user_id: jack.id, menu_id: july_three.id)

# MenuRecipes
# MenuRecipe.create(menu_id: july_one.id, recipe_id: recipe_one.id, meal: "Breakfast", weekday: "Wednesday")
# MenuRecipe.create(menu_id: july_two.id, recipe_id: recipe_two.id, meal: "Snack", weekday: "Sunday")

# RecipeIngredients
# RecipeIngredient.create(recipe_id: recipe_one.id, ingredient_id: ingredient_one.id, amount: "4")
# RecipeIngredient.create(recipe_id: recipe_two.id, ingredient_id: ingredient_two.id, amount: "2 tbsp")

