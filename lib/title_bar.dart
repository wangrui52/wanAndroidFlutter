import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title, style: new TextStyle(fontSize: 18.0)),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFF314F), Color(0xFFFE802C)],
          ),
        ),
      ),
    );
  }
}
