# For more information see: http://emberjs.com/guides/routing/

EmberTodo.Router.map ->
  @resource "todos",
    path: "/"
  , ->

  return

EmberTodo.TodosRoute = Ember.Route.extend(
  model: ->
    @store.find 'todo'
)

EmberTodo.TodosIndexRoute = Ember.Route.extend(model: ->
  @modelFor "todos"
)