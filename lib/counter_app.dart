// stl grni
import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  String message = "";

  void check({required int value}) {
    if (value == 0) {
      message = "Our counter value is: zero";
    } else if (value > 0) {
      message = "our counter value is:Positive";
    } else if (value < 0) {
      message = "Our counter value is : Negative";
    } else {
      message = "Our counter value is:";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter.App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          // "$counter",
          counter.toString(),

          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter = counter + 1;
                check(value: counter);
              });
            },
            child: Icon(Icons.add),
          ),
          SizedBox(width: 20), // Added spacing between buttons
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter = counter - 1;
                check(value: counter);
              });
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
