import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:simple_nuroute_implementation/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nuvigator simple example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Nuvigator(
        router: MyRouter(),
      ),
    );
  }
}