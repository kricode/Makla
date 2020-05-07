import 'package:flutter/material.dart';




class commande extends StatefulWidget {
  commande({Key key}) : super(key: key);

  _commandeState createState() => _commandeState();
}

class _commandeState extends State<commande> {
  @override
  Widget build(BuildContext context) {
      double screenWidth = MediaQuery. of(context). size. width;

    return Container(
      child: GestureDetector(
        onTap: (){
          
        },
        child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: 2.0,
                blurRadius: 5.0
            ),
          ]
      ),
      margin: EdgeInsets.all(5.0),
      child: Row(
        
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft: Radius.circular(10.0)),
            child: Text("image here"),
            //child: Image.asset(object["placeImage"],width: 80,height: 80,fit: BoxFit.cover,),
          ),
          SizedBox(
            width: screenWidth /(1.8),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("here the name of item"),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0,bottom: 2.0),
                    child: Text("here the list of componements",overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12.0,color: Colors.black54,),maxLines: 1,),
                  ),
                  Text("Min. Order: "
                      //"${object["minOrder"]}"
                      "",style: TextStyle(fontSize: 12.0,color: Colors.black54),)
                ],
              ),
            ),
          ),
          SizedBox(
            //width: screenWidth /(3),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: <Widget>[

                  IconButton(icon: Icon(Icons.add), onPressed: (){},color: Colors.blue,),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,bottom: 2.0),
                    child: Text("0",overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 20,color: Colors.black54,),maxLines: 1,),
                  ),
                  IconButton(icon: Icon(Icons.remove), onPressed: (){},color: Colors.blue,),

                ],
              ),
            ),
          ),
        ],
      ),
    ),
      ),
    );
  }
}