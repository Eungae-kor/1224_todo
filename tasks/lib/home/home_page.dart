import 'package:flutter/material.dart';
import 'package:todo_app/home/widgets/add_button.dart';
import 'package:todo_app/home/widgets/no_todo_view.dart';

String title = "은개's Tasks";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 211, 211, 211),
      body: Column(
        children: [NoTodo(title), Spacer(), AddButton(), SizedBox(height: 60)],
      ),
    );
  }
}
