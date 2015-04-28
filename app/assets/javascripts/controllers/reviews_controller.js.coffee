TestOra.ReviewsNewController = Ember.Controller.extend
  actions:
    save: ()->
      review = @get 'model'
      controller = @
      if isValid(review)
        review.save().then(()->
          controller.transitionToRoute('reviews')
        , (review)->
          console.log review)

TestOra.ReviewsListController = Ember.Controller.extend
  needs: ['application']
  actions:
    delete: (id)->
      review = @get('content').find((b)->
        b.id == id
      )
      review.destroyRecord()

isValid = (review)->
  title = review.get('title')
  text = review.get('text')
  if title == undefined || title.length == 0
    review.set('isError', true)
    review.set('modelError', 'Title can not be blank')
    return false
  if text == undefined || text.length == 0
    review.set('isError', true)
    review.set('modelError', 'Text can not be blank')
    return false
  review.set('isError', false)
  review.set('modelError', '')
  true