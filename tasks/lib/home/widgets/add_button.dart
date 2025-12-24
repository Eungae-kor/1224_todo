import 'package:flutter/material.dart';
import 'package:todo_app/home/widgets/todo_entity.dart';

class AddButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.bottomRight,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(51),
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.add, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
