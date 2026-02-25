import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoListScreen(),
    );
  }
}

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<bool> _isChecked = [true, false, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do List"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          CheckboxListTile(
            title: const Text("My todo item"),
            value: _isChecked[0],
            onChanged: (bool? newValue) {
              setState(() {
                _isChecked[0] = newValue!;
              });
            },
            controlAffinity: ListTileControlAffinity.trailing,
          ),
          CheckboxListTile(
            title: const Text("My todo item"),
            value: _isChecked[1],
            onChanged: (bool? newValue) {
              setState(() {
                _isChecked[1] = newValue!;
              });
            },
            controlAffinity: ListTileControlAffinity.trailing,
          ),
          CheckboxListTile(
            title: const Text("My todo item"),
            value: _isChecked[2],
            onChanged: (bool? newValue) {
              setState(() {
                _isChecked[2] = newValue!;
              });
            },
            controlAffinity: ListTileControlAffinity.trailing,
          ),
        ],
      ),
      floatingActionButton: TextButton(
        onPressed: () {},
        child: const Text(
          "Add",
          style: TextStyle(color: Colors.deepPurple, fontSize: 16),
        ),
      ),
    );
  }
}