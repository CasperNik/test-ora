Ember.Handlebars.registerBoundHelper 'show_date_time', (date)->
  moment(date).format('MMMM Do YYYY, H:mm')
Ember.Handlebars.registerBoundHelper 'show_date_activity', (date)->
  moment(date).format('D/M/YYYY, H:mm')
Ember.Handlebars.registerBoundHelper 'show_date_month', (date)->
  moment(date).format('MMMM')