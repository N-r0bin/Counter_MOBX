import 'package:flutter/material.dart';
import 'package:mobxsm_project/counter_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterUI(),
    );
  }
}
