EmberTodo.TodoController = Ember.ObjectController.extend(isCompleted: ((key, value) ->
  console.log key
  console.log value
  model = @get('model')
  if value is undefined
    model.get 'isCompleted'
  else
    model.set 'isCompleted', value
    model.save()
    value
).property('model.isCompleted'))