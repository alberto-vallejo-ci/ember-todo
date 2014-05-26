#= require ./store
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./components
#= require_tree ./templates
#= require_tree ./routes
#= require ./router
#= require_self

#EmberTodo.ApplicationAdapter = DS.FixtureAdapter.extend()

EmberTodo.ApplicationSerializer = DS.LSSerializer.extend()

EmberTodo.ApplicationAdapter = DS.LSAdapter.extend({
  namespace: 'ember-todos-emberjs'
})