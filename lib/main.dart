import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'box.dart';

void main() => runApp(Listbox());
class Listbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Box(),
    );
  }
}