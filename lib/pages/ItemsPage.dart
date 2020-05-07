import 'package:flutter/material.dart';
import 'package:makla/pages/acceuil.dart';
import '../widgets/Card.dart';
import '../Utils/Classes.dart';



class ItemPage extends StatefulWidget {


  final Plat plt ;
  ItemPage({Key key, @required this.plt}) : super(key: key);
  @override
  _ItemPageState createState() => _ItemPageState();
  
}
  bool checkBoxValue = false;

class _ItemPageState extends State<ItemPage> {
  
  @override
  
  Widget build(BuildContext context) {
      double width = MediaQuery. of(context). size. width;

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
      body: Container(
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
            width: width /(1.5),
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
          new Checkbox(value: checkBoxValue,
          
          activeColor: Colors.blue,
          onChanged:(bool newValue){
        setState(() {
          checkBoxValue = newValue;
          print(checkBoxValue);
        });
          }),
        ],
      ),
    ),
      ),
    ));
  }
}

