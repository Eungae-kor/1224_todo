import 'package:flutter/material.dart';
import 'package:todo_app/home/widgets/todo.dart';

class TodoView extends StatelessWidget {
  final List<Todo> todos;
  final void Function(int index) onDelete;

  const TodoView(this.todos, {required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return TodoItem(todo: todos[index], index: index, onDelete: onDelete);
        },
      ),
    );
  }
}

class TodoItem extends StatelessWidget {
  final Todo todo;
  final int index;
  final void Function(int index) onDelete;

  const TodoItem({
    required this.todo,
    required this.index,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(todo),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        color: Colors.red,
        child: Icon(Icons.delete, color: Colors.white),
      ),
      onDismissed: (_) {
        onDelete(index);
      },
      child: Container(
        margin: EdgeInsets.only(top: 8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: 50,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.circle_outlined),
                    ),
                    Text(todo.title),
                    Spacer(),
                    Icon(
                      todo.isFavorite ? Icons.star : Icons.star_border,
                      color: todo.isFavorite ? Colors.amber : Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
