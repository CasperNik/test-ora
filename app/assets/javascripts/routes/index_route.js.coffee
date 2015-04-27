TestOra.IndexRoute = Ember.Route.extend
  redirect: ()->
    @transitionTo('blogs')