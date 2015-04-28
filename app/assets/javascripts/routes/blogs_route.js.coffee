TestOra.ApplicationRoute = Ember.Route.extend
  model: ()->
    @store.find('log')

TestOra.BlogsListRoute = Ember.Route.extend
  model: ()->
    @store.find('blog')
  setupController: (controller, model)->
    controller.set('controllers.application.model', @store.find('log'))
    controller.set('model', model)
TestOra.BlogsIndexRoute = Ember.Route.extend
  redirect: ()->
    @transitionTo('blogs.list')
TestOra.BlogsNewRoute = Ember.Route.extend
  model: ()->
    @store.createRecord 'blog'
