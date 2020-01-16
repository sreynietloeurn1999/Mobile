import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_14_01/stf.dart';

void main() => runApp(Home());
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: User(),
    );
  }
}


