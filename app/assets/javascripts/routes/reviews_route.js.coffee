TestOra.ReviewsListRoute = Ember.Route.extend
  model: ()->
    @store.find('review')
  setupController: (controller, model)->
    controller.set('controllers.application.model', @store.find('log'))
    controller.set('model', model)
TestOra.ReviewsIndexRoute = Ember.Route.extend
  redirect: ()->
    @transitionTo('reviews.list')
TestOra.ReviewsNewRoute = Ember.Route.extend
  model: ()->
    @store.createRecord 'review'
