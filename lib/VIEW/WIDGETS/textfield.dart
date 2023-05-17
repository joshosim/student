import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MiniTextField extends StatelessWidget {
  final String name;
  TextEditingController textValue;
  final String labelName;
  final IconData icon;
  MiniTextField(
      {Key? key,
      required this.name,
      required this.textValue,
      required this.labelName,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text('Student Name:'),
        icon: Icon(Icons.person),
      ),
      onChanged: (value){
        textValue.text = value;
      },
    );
  }
}
