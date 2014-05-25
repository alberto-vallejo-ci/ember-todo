EmberTodo.EditTodoView = Ember.TextField.extend(didInsertElement: ->
  @$().focus()
  return
)

Ember.Handlebars.helper "edit-todo", EmberTodo.EditTodoView