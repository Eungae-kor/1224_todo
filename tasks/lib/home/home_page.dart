import 'package:flutter/material.dart';
import 'package:todo_app/home/widgets/add_button.dart';
import 'package:todo_app/home/widgets/no_todo_view.dart';
import 'package:todo_app/home/widgets/todo.dart';
import 'package:todo_app/home/widgets/todo_entity.dart';
import 'package:todo_app/home/widgets/todo_view.dart';

final String title = "해진's Tasks";

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Todo> todos = [];
  void toggleDone(int index) {
    setState(() {
      todos[index] = todos[index].copyWith(isDone: !todos[index].isDone);
    });
  }

  Future<void> _openTodoEntity() async {
    final Todo? newTodo = await showModalBottomSheet<Todo>(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 12,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: TodoEntity(),
          ),
        );
      },
    );
    if (newTodo != null) {
      setState(() {
        todos.add(newTodo);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 211, 211, 211),
      body: Column(
        children: [
          if (todos.isEmpty)
            NoTodo(title)
          else
            TodoView(
              todos,
              onDelete: (index) {
                setState(() {
                  todos.removeAt(index);
                });
              },
              onToggleDone: toggleDone,
            ),
          Spacer(),
          AddButton(onPressed: _openTodoEntity),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
