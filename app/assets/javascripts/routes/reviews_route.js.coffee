TestOra.ReviewsListRoute = Ember.Route.extend
  model: ()->
    @store.find('review')
TestOra.ReviewsIndexRoute = Ember.Route.extend
  redirect: ()->
    @transitionTo('reviews.list')
TestOra.ReviewsNewRoute = Ember.Route.extend
  model: ()->
    @store.createRecord 'review'
