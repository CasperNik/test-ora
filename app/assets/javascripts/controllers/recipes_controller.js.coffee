TestOra.RecipesNewController = Ember.Controller.extend
  actions:
    save: ()->
      recipe = @get 'model'
      controller = @
      if isValid(recipe)
        recipe.save().then(()->
          controller.transitionToRoute('recipes')
        , (recipe)->
          console.log recipe)

TestOra.RecipesListController = Ember.Controller.extend
  actions:
    delete: (id)->
      recipe = @get('content').find((b)->
        b.id == id
      )
      recipe.destroyRecord()

isValid = (recipe)->
  title = recipe.get('title')
  text = recipe.get('text')
  if title == undefined || title.length == 0
    recipe.set('isError', true)
    recipe.set('modelError', 'Title can not be blank')
    return false
  if text == undefined || text.length == 0
    recipe.set('isError', true)
    recipe.set('modelError', 'Text can not be blank')
    return false
  recipe.set('isError', false)
  recipe.set('modelError', '')
  true