import 'package:flutter/material.dart';
import 'package:todo_app_flutter/screens/add_task_page.dart';
import 'package:todo_app_flutter/theme.dart';
import 'package:todo_app_flutter/todo_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offWhite,
      drawer: Drawer(
        child: Container(),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu_rounded,
                color: grey,
                size: 30.0,
              ),
            );
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout_rounded,
              color: grey,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: const [
            Text(
              "What's up, Nilay!",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'TODAY\'S TASK',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TodoTile(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddTaskPage(),
            ),
          );
        },
        child: const Icon(
          Icons.add_rounded,
          size: 30.0,
        ),
      ),
    );
  }
}
