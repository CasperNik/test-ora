TestOra.RecipesListRoute = Ember.Route.extend
  model: ()->
    @store.find('recipe')
TestOra.RecipesIndexRoute = Ember.Route.extend
  redirect: ()->
    @transitionTo('recipes.list')
TestOra.RecipesNewRoute = Ember.Route.extend
  model: ()->
    @store.createRecord 'recipe'
