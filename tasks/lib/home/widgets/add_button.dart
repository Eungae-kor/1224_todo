import 'package:flutter/material.dart';
import 'package:todo_app/home/widgets/todo_entry.dart';

class AddButton extends StatelessWidget {
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
            onPressed: () {
              showModalBottomSheet(
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
                      child: TodoEntry(),
                    ),
                  );
                },
              );
            },
            icon: Icon(Icons.add, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
