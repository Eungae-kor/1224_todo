/*   final String title;
  final String? description;
  final bool isFavorite;
  final bool isDone; */

import 'package:flutter/material.dart';
import 'package:todo_app/home/widgets/favorite_button.dart';
import 'package:todo_app/home/widgets/todo_view.dart';

class TodoEntity extends StatefulWidget {
  @override
  State<TodoEntity> createState() => _TodoEntityState();
}

class _TodoEntityState extends State<TodoEntity> {
  bool isFavorite = false;
  bool showDescription = false;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _detailController = TextEditingController();
  bool get canSave {
    return _titleController.text.trim().isNotEmpty;
  }

  void saveTodo() {
    final todo = Todo(
      title: _titleController.text.trim(),
      description:
          _detailController.text.trim().isEmpty
              ? null
              : _detailController.text.trim(),
      isFavorite: isFavorite,
    );
    Navigator.of(context).pop(todo);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _detailController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          autofocus: true,
          controller: _titleController,
          decoration: InputDecoration(
            hintText: "새 할 일",
            hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          onChanged: (_) {
            setState(() {});
          },
        ),
        if (showDescription)
          Expanded(
            child: TextField(
              controller: _detailController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(hintText: "세부정보 추가"),
            ),
          ),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.short_text_rounded, size: 24),
              onPressed: () {
                setState(() {
                  showDescription = !showDescription;
                });
              },
            ),
            FavoriteButton(
              isFavorite: isFavorite,
              onChanged: (value) {
                setState(() {
                  isFavorite = value;
                });
              },
            ),
            Spacer(),
            TextButton(
              onPressed: canSave ? saveTodo : null,
              child: Text(
                "저장",
                style: TextStyle(color: canSave ? Colors.blue : Colors.grey),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
