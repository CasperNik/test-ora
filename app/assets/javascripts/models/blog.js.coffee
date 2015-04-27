TestOra.Blog = DS.Model.extend
  title: DS.attr('string')
  text: DS.attr('string')
  created_at: DS.attr('date')
  updated_at: DS.attr('date')
  modelError: DS.attr()