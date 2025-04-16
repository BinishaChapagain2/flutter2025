import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final GlobalKey<FormState> _nameFormKey = GlobalKey();

  bool switchvalue = false;

  bool checkedvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Example"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Form(
          key: _nameFormKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter username";
                  } else {
                    return null;
                  }
                },

                onSaved: (newValue) {
                  print(newValue);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter Name",
                  labelText: "User name",
                ),
              ),

              Switch(
                value: switchvalue,
                onChanged: (value) {
                  setState(() {
                    switchvalue = value;
                  });
                },
              ),

              Checkbox(
                value: checkedvalue,
                onChanged: (value) {
                  setState(() {
                    checkedvalue = value ?? false;
                  });
                },
              ),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (!_nameFormKey.currentState!.validate()) {
                    return;
                  }
                  _nameFormKey.currentState!.save();
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
