Ember.Handlebars.registerBoundHelper 'show_date_time', (date)->
  moment(date).format('MMMM Do YYYY, H:mm')