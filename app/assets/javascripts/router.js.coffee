# For more information see: http://emberjs.com/guides/routing/

EmberTodo.Router.map ()->
  @resource 'todos', { path: '/' }

EmberTodo.TodosRoute = Ember.Route.extend(
  model: ->
    @store.find 'todo'
)

