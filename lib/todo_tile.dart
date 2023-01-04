import 'package:flutter/material.dart';
import 'package:todo_app_flutter/theme.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: grey.withOpacity(0.4),
              blurRadius: 6,
              spreadRadius: 0.8,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'data',
              style: TextStyle(color: blackAccent, fontSize: 20.0),
            ),
            IconButton(
              onPressed: () {
                print("delete");
              },
              icon: const Icon(
                Icons.delete_rounded,
                color: grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
