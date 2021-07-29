import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ToDo()));

class ToDo extends StatelessWidget {
  final List<String> products = [
    'IronMan',
    'Batman',
    'Capitan America',
    'Superman'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List App"),
          backgroundColor: Colors.orange,
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, i) {
            return ToDoItem(products[i]);
          },
        ));
  }
}

class ToDoItem extends StatelessWidget {
  final String title;
  const ToDoItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 8.0),
        leading: Checkbox(
          value: false,
          onChanged: (bool? value) {},
        ),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              color: Colors.black54),
        ),
        trailing: Icon(Icons.delete),
      ),
    );
  }
}
