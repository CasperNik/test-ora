TestOra.Log = DS.Model.extend
  user: DS.attr('string')
  t_type: DS.attr('string')
  m_type: DS.attr('string')
  destroyed_title: DS.attr('string')
  created_at: DS.attr('date')
  updated_at: DS.attr('date')
  logable: DS.belongsTo('logable', {polymorphic: true, async: true})