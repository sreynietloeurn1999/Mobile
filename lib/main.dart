import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:modal_16_01/modal.dart';

void main() => runApp(Sreyniet());
class Sreyniet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Modal(),
    );
  }
}