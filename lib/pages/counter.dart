import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  void increment() {
    // setstate rebuilds the widget
    setState(() {
      _counter++;
    });
  }

  void reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("You have pusehd the button this many times"),
          Text(
            _counter.toString(),
            style: TextStyle(fontSize: 40),
          ),
          ElevatedButton(onPressed: increment, child: Text("Increment")),
          BackButton(onPressed: reset),
        ]),
      ),
    );
  }
}
