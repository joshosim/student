import 'package:flutter/material.dart';

class IconButtonn extends StatelessWidget {
  final String text;
  final IconData icon;
  const IconButtonn({Key? key,
    required this.text,
    required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        IconButton(icon: Icon(icon),
          color: Colors.blue,onPressed: (){},
          iconSize: 40, tooltip: text,),
        Text(text,style: TextStyle(color: Colors.blue),)
      ],
    );
  }
}
