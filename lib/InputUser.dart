import 'package:flutter/material.dart';

class Inputuser extends StatefulWidget {
  Inputuser({super.key});

  @override
  State<Inputuser> createState() => _InputuserState();
}

class _InputuserState extends State<Inputuser> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input from user(Text Fill)"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              onChanged: (value) {
                setState(() {
                  _nameController.text = value;
                });
              },
              decoration: InputDecoration(
                hintText: "Enter your Name",
                border: OutlineInputBorder(
                  gapPadding: 10,

                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.deepPurple, width: 3),
                ),

                labelText: "Type here",
                floatingLabelAlignment: FloatingLabelAlignment.center,
                prefixIcon: Icon(Icons.type_specimen_outlined),
                suffixIcon: Icon(Icons.edit_note),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                counterText: "",
              ),
              // obscureText: true,
              obscuringCharacter: "*",
              keyboardType: TextInputType.multiline,
              cursorColor: Colors.amber,

              // maxLength: 10,
              // minLines: 1,
              // maxLines: 4,
            ),
            Text(_nameController.text),
          ],
        ),
      ),
    );
  }
}
