import 'package:flutter/material.dart';
import '../Utils/Classes.dart';




class commande extends StatefulWidget {
  Commande com;
  commande({Key key, @required this.com}) : super(key: key);

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
            
            child: Image.asset(widget.com.image,width: 80,height: 80,fit: BoxFit.cover,),
          ),
          SizedBox(
            width: screenWidth /(1.8),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.com.nom),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0,bottom: 2.0),
                    child: Text(widget.com.prix.toString(),overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12.0,color: Colors.black54,),maxLines: 1,),
                  ),
                  
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

                  IconButton(icon: Icon(Icons.add), onPressed: (){
                    widget.com.increment(widget.com);
                  },color: Colors.blue,),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,bottom: 2.0),
                    child: Text(widget.com.quantite.toString(),overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 20,color: Colors.black54,),maxLines: 1,),
                  ),
                  IconButton(icon: Icon(Icons.remove), onPressed: (){
                    widget.com.decrement(widget.com);
                  },color: Colors.blue,),

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