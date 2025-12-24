import 'package:flutter/material.dart';
import 'package:todo_app/home/widgets/favorite_button.dart';
import 'package:todo_app/home/widgets/todo.dart';

class TodoView extends StatelessWidget {
  final List<Todo> todos;
  const TodoView(this.todos);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        // return 뒤에 Column
        itemBuilder: (context, index) {
          return TodoItem(todos[index]);
        },
      ),
    );
  }
}

class TodoItem extends StatelessWidget {
  Todo todo;
  TodoItem(this.todo);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      child: Row(
        children: [
          Text("togglebutton"),
          Text("todoTitle"),
          Icon(
            todo.isFavorite ? Icons.star : Icons.star_border,
            color: todo.isFavorite ? Colors.amber : Colors.grey,
          ),
        ],
      ),
    );
  }
}
