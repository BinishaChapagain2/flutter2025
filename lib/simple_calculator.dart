import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  final TextEditingController _numberController1 = TextEditingController();
  final TextEditingController _numberController2 = TextEditingController();
  String _result = "";

  void _addNumbers() {
    final num1 = double.tryParse(_numberController1.text) ?? 0;
    final num2 = double.tryParse(_numberController2.text) ?? 0;
    setState(() {
      _result = "Result: ${num1 + num2}";
    });
  }

  void _subtractNumbers() {
    final num1 = double.tryParse(_numberController1.text) ?? 0;
    final num2 = double.tryParse(_numberController2.text) ?? 0;
    setState(() {
      _result = "Result: ${num1 - num2}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Simple Calculator",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _numberController1,
              decoration: InputDecoration(
                hintText: "Enter first number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Number 1",
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _numberController2,
              decoration: InputDecoration(
                hintText: "Enter second number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Number 2",
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: _addNumbers, child: Text("Add")),
                ElevatedButton(
                  onPressed: _subtractNumbers,
                  child: Text("Subtract"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
