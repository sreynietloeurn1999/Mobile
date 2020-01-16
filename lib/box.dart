import 'package:flutter/material.dart';

class Box extends StatefulWidget {
  @override
  _BoxState createState() => _BoxState();
}

class _BoxState extends State<Box> {
  Map <String,bool> todos = {
    "JS": false,
    "Java" : false,
    "PHP": false,
    "Database" : false
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List box"),
      ),
      body: ListView(
        children: todos.keys.map( (String key){
          return CheckboxListTile(
            title: Text(key),
            value: todos[key],
            onChanged: (bool value){
              setState(() {
                todos[key] = value;
              });
            },
            
          );
        }).toList()
      ),
    );
  }
}