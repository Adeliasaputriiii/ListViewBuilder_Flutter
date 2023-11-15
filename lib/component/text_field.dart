import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  final String label;

  const textField({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            fillColor: Colors.grey[100],
            filled: true,
            label: Text(label),
            labelStyle: TextStyle(
                color: const Color.fromARGB(255, 1, 1, 1), fontSize: 16)),
      ),
    );
  }
}
