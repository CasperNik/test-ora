$ ->
  nav_bar = $('a.dropdown-toggle.navbar-menu')
  nav_bar.on 'click', (e)->
    e.preventDefault()
    e.stopImmediatePropagation()
    menu = $(@).closest('ul').find('ul.user-menu').eq(0)
    if (menu.is(':visible')) then menu.hide() else menu.show()

  $('body').on 'click', ()->
    menu = $('ul.user-menu')
    if (menu.is(':visible')) then menu.hide()
