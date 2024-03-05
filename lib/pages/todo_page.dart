import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // TEXT editing controller

  //greeting message
  String greetingMessage = "";

  TextEditingController myController = TextEditingController();
  void _greet() {
    String username = myController.text;
    setState(() {
      greetingMessage = "Hello " + username;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // greet user message
              Text(greetingMessage),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Type something ..."),
              ),
              ElevatedButton(onPressed: _greet, child: Text("Tap here")),
            ],
          ),
        ),
      ),
    );
  }
}
