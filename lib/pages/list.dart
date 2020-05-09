import 'package:flutter/material.dart';
import 'package:makla/pages/acceuil.dart';
import 'package:http/http.dart' as http;
import '../Utils/Classes.dart';
import 'package:web_socket_channel/io.dart';

import '../widgets/commande.dart';
import 'dart:convert';


class list extends StatefulWidget {

  List<Commande> commande ;
  
  String categorie;
  List<Commande> commandes;
  list({Key key,  @required this.commandes, @required this.categorie}) : super(key: key);
    final channel = IOWebSocketChannel.connect('ws://localhost:8088');

  @override
  _listState createState() => _listState();
  
}
  bool checkBoxValue = false;

class _listState extends State<list> {
  final channel = IOWebSocketChannel.connect('ws://localhost:8088');
  

  
  @override
  
  Widget build(BuildContext context) {
      var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;








        return Scaffold(
          appBar: AppBar(
    
                                leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.black, onPressed: (){
                                    Navigator.pop(context, MaterialPageRoute(
                                    builder: (context) => acceuil( )));
                                },),
                                title: Text('Nos Pizzas:',
                                style: TextStyle(
                                  color: Colors.black87,
                                                  fontSize: 13,
    
                                                  ),),
                                backgroundColor: Colors.white60,
    
                                ),
          body:      
      
      ListView.builder(
        stream: widget.channel.stream,      //we would have used this in case of web sockets
        builder: (context , snapshot){
        itemCount: widget.commandes.length,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext context, int index){
         return 
                Container(
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
                    child: Text("klk chose"),
                    //snapshot data here
                    //child: Image.asset(object["placeImage"],width: 80,height: 80,fit: BoxFit.cover,),
                  ),
                  SizedBox(
                    width:screenWidth /(1.5),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(snapshot.data['nom'].toString()),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0,bottom: 2.0),
                            //the list of the compenement snapshot data here
                            child: Text(snapshot.data['contenu'].toString(),overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12.0,color: Colors.black54,),maxLines: 1,),
                          ),
                          Text(snapshot.data['prix'].toString(),style: TextStyle(fontSize: 12.0,color: Colors.black54),)
                        ],
                      ),
                    ),
                  ),
                  new Checkbox(value: checkBoxValue,
                  
                  activeColor: Colors.blue,
                  onChanged:(bool newValue){
                setState(() {
                  checkBoxValue = newValue;
                  print(checkBoxValue);
                  if (newValue = true){
               //     widget.commandes.add(snapshot[data]);
                  }
                });
                  }),
                ],
              ),
            ),
              ),
            );
        
            }
            ),
            
             floatingActionButton: FloatingActionButton(onPressed: (){},
                     backgroundColor: Colors.yellowAccent,
                   child: Icon(Icons.check,color: Colors.white, )),
            
            );
           
  }
}

