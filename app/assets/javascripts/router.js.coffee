EmberTodo.Router.map ->
  @resource 'todos',
    path: "/"
  , ->
    @route 'active'
    @route 'completed'
    return

  return

EmberTodo.TodosRoute = Ember.Route.extend(
  model: ->
    @store.find 'todo'
)

EmberTodo.TodosIndexRoute = Ember.Route.extend(
  model: ->
    @modelFor 'todos'
)

EmberTodo.TodosActiveRoute = Ember.Route.extend(
  model: ->
    @store.filter 'todo', (todo) ->
      !todo.get('isCompleted')

  renderTemplate: (controller) ->
    @render 'todos/index',
      controller: controller

    return
)

EmberTodo.TodosCompletedRoute = Ember.Route.extend(
  model: ->
    @store.filter 'todo', (todo) ->
      todo.get('isCompleted')

  renderTemplate: (controller) ->
    @render 'todos/index',
      controller: controller

    return
)