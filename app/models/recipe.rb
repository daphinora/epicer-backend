class Recipe < ApplicationRecord
    has_many :steps
    has_many :user_recipes
    has_many :menu_recipes
    has_many :menus, through: :menu_recipes
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients


    # def self.create_from_api(data)
    #     # create a recipe!
    #     recipe = self.find_or_create(title: data.title, cook_time: data.readyInMinutes, image: data.image)

    #     # create the steps for the recipe!
    #     data.analyzedInstructions.first.steps.each {|s| Step.create(recipe_id: recipe.id, instruction: s.step)}

    #     # create ingredients for the recipe!
    #     data.extendedIngredients.each {|i| recipe.ingredients.create(recipe_id: recipe.id, name: i.original, image: i.image)}

    #     # change recipe to ingredient to a one to many
    # end

end
