TestOra.BlogEditController = Ember.Controller.extend
  actions:
    save: ()->
      blog = @get 'model'
      controller = @
      if isValid(blog)
        blog.save().then(()->
          controller.transitionToRoute('blogs')
        , (blog)->
          console.log blog)

isValid = (blog)->
  title = blog.get('title')
  text = blog.get('text')
  if title == undefined || title.length == 0
    blog.set('isError', true)
    blog.set('modelError', 'Title can not be blank')
    return false
  if text == undefined || text.length == 0
    blog.set('isError', true)
    blog.set('modelError', 'Text can not be blank')
    return false
  blog.set('isError', false)
  blog.set('modelError', '')
  true