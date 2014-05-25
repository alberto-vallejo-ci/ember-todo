EmberTodo.TodoController = Ember.ObjectController.extend(
  actions:
    editTodo: ->
      @set "isEditing", true
      return

    acceptChanges: ->
      @set "isEditing", false
      @get("model").save()
      if Ember.isEmpty @get('model.title')
        @send('removeTodo')
      else
        @get('model').save()

      return

    removeTodo: ->
      todo = @get("model")
      todo.deleteRecord()
      todo.save()
      return

  isEditing: false

  isCompleted: ((key, value) ->
    model = @get("model")
    if value is `undefined`
      model.get "isCompleted"
    else
      model.set "isCompleted", value
      model.save()
      value
  ).property("model.isCompleted")
)