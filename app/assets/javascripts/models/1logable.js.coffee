TestOra.Logable = DS.Model.extend
  logs: DS.hasMany('log', {async: true})