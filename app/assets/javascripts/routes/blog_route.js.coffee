TestOra.BlogIndexRoute = Ember.Route.extend
  model: (params)->
    @store.find('blog', params.blog_id)
    