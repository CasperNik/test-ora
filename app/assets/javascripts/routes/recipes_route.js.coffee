TestOra.RecipesListRoute = Ember.Route.extend
  model: ()->
    @store.find('recipe')
  setupController: (controller, model)->
    controller.set('controllers.application.model', @store.find('log'))
    controller.set('model', model)
TestOra.RecipesIndexRoute = Ember.Route.extend
  redirect: ()->
    @transitionTo('recipes.list')
TestOra.RecipesNewRoute = Ember.Route.extend
  model: ()->
    @store.createRecord 'recipe'
