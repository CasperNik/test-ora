TestOra.LogDetailsComponent = Ember.Component.extend
  isElement: Ember.computed.alias('log.logable')
  tType: Ember.computed.alias('log.t_type')
  isShow: (->
    @get('tType') == 'destroyed'
  ).property()