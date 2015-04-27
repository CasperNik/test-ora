TestOra.BlogsListRoute = Ember.Route.extend
  model: ()->
    @store.find('blog')
TestOra.BlogsIndexRoute = Ember.Route.extend
  redirect: ()->
    @transitionTo('blogs.list')
TestOra.BlogsNewRoute = Ember.Route.extend
  model: ()->
    @store.createRecord 'blog'
