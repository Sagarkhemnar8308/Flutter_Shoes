import 'package:flutter/material.dart';
import 'package:shoes/First_Screen.dart';

void main(List<String> args) {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First_Screen(),
    );
  }
}