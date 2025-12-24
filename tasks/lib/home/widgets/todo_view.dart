import 'package:flutter/material.dart';
import 'package:todo_app/home/widgets/todo.dart';

class TodoView extends StatelessWidget {
  final List<Todo> todos;

  const TodoView(this.todos);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          todos.map((todo) {
            return TodoItem(todo);
          }).toList(),
    );
  }
}

class TodoItem extends StatelessWidget {
  Todo todo;
  TodoItem(this.todo);
  @override
  Widget build(BuildContext context) {
    return Text("Todo");
  }
}
