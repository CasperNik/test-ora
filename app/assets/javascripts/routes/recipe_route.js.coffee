TestOra.RecipeIndexRoute = Ember.Route.extend
  model: (params)->
    @store.find('recipe', params.recipe_id)
    