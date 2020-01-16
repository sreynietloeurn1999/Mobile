import 'package:flutter/material.dart';

class Modal extends StatefulWidget {
  @override
  _ModalState createState() => _ModalState();
}

class _ModalState extends State<Modal> {
  TextEditingController todoController = TextEditingController();
  createModal(BuildContext context) {
    
    return showDialog(
      
      context: context,
      builder: (context) {
        
        return AlertDialog(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10.0)
         ),
          title: Text("Todo List"),
          content: TextField(
            autofocus: true,
            controller: todoController,
          ),
          
          actions: <Widget>[
            
            MaterialButton(
              
             
              child: Text("Add New",style: TextStyle(color: Colors.blue,fontSize: 15.0),),
               onPressed: () {
                 Navigator.of(context).pop(todoController.text.toString());
                 debugPrint(todoController.text.toString());
               }
            ),
          ],
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List"),
      ),
      body: Center(
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>createModal(context),
        child: Icon(Icons.add),
        
      ),
    );
  }
}