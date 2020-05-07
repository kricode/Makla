import 'package:flutter/material.dart';
import '../widgets/commande.dart';



class facture extends StatefulWidget {
  
  facture({Key key}) : super(key: key);

  _factureState createState() => _factureState();
}

class _factureState extends State<facture> {
  @override

  Widget build(BuildContext context) {
  double screenWidth = MediaQuery. of(context). size. width;
  double screenHeight = MediaQuery. of(context). size. height;

  

    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
              width: screenWidth,
              child: SafeArea(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                          Text(
                            "Facture",
                            style: TextStyle(fontSize: 50, fontFamily: "Samantha"),
                          ),
                          IconButton(icon: Icon(Icons.menu), onPressed: () {})
                        ],
                      ),
                    ),
                  
                  ],
                ),
              )),
              ),
              SizedBox(height: 20,),
              commande(),
            ],
          ),
      ),
              
      floatingActionButton: FloatingActionButton(onPressed: (){},
          backgroundColor: Colors.orange,
      child: Icon(Icons.check,color: Colors.white, )),
    );
  }
}

