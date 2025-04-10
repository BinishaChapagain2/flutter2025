import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons")),

      // body ma : listView ni grna milxa
      body: SingleChildScrollView(
        child: Column(
          spacing: 30,
          children: [
            FilledButton(onPressed: () {}, child: Text("Button 1")),
            FilledButton.tonal(onPressed: () {}, child: Text("button 2")),
            FilledButton.tonalIcon(
              onPressed: () {},
              label: Text("Add"),
              icon: Icon(Icons.add),
            ),

            // icon lai pressed garauna ko lagi icon buttom
            IconButton.filledTonal(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios),
            ),

            TextButton(
              onPressed: () {
                print("I am pressed");
              },
              child: Text("Long Text"),
            ),

            ElevatedButton(
              onPressed: () {
                print("Elevator button pressdd");
              },
              child: Text("Elevated Button"),
            ),

            GestureDetector(
              onDoubleTap: () {
                print("I am container");
              },
              child: Container(
                height: 200,

                width: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),

            // InkWell
            InkWell(
              onTap: () {
                print("Object");
              },
              child: Container(
                height: 200,

                width: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
