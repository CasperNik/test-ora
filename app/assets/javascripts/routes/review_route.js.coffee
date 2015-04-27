TestOra.ReviewIndexRoute = Ember.Route.extend
  model: (params)->
    @store.find('review', params.review_id)
    