import 'package:flutter/material.dart';
import '../utils/Classes.dart';

class Item extends StatefulWidget {
  Plat plat;
  Item({Key key, @required this.plat}) : super(key: key);

  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override

  @override
  Widget build(BuildContext context) {
    return Container(
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
            width: 250,
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
          )
        ],
      ),
    );
  }
}