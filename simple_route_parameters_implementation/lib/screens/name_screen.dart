import 'package:flutter/material.dart';

class NameScreen extends StatelessWidget {
  final String name;

  NameScreen({
    @required this.name,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Name screen"),
      ),
      body: Center(
        child: Text(
         'Hello, $name',
          style: TextStyle(
            fontSize: 25
          ),
        ),
      ),
    );
  }
}