import 'package:flutter/material.dart';
import '../widgets/Navigation.dart';

class acceuil extends StatelessWidget {
  final String todo;

  // In the constructor, require a Todo.
  acceuil({Key key, @required this.todo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

                            leading: Icon(Icons.fastfood),
                            title: Text('Bienvenue chez nous',
                            style: TextStyle(
                                              fontSize: 13,

                                              ),),
                            backgroundColor: Colors.orange,

                            actions: <Widget>[


                                Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.local_cafe), // icon
                                  Text("$todo", style: TextStyle(fontSize: 20)), // text
                                ],
                              ),

                            ],),

      body: Navigation(),


    );
  }
}