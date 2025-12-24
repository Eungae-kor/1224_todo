import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  final String title;
  final String? description;
  final bool isFavorite;

  Todo({
    required this.title,
    required this.description,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Todo");
  }
}
