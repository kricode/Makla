import 'package:flutter/material.dart';
import '../widgets/Navigation.dart';

class acceuil extends StatelessWidget {
  final String todo;

  // In the constructor, require a Todo.
  acceuil({Key key, this.todo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            floating: true,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Bienvenue chez nous!!"),
              background: Image.asset(
                'assets/images/back.jpg',
                fit: BoxFit.fill
              ),
            ),

          ),
          SliverFillRemaining(child: Navigation(),)
        ],
      )
      


    );
  }
}