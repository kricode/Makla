import 'package:flutter/material.dart';
import 'package:makla/Utils/Classes.dart';
import './acceuil.dart';
import './ItemsPage.dart';


class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  String onChange ;
  String onSubmit ;
  Plat plt;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(



        backgroundColor: Colors.white,


        body:  new SingleChildScrollView(
            child: Center(
                child: Container(
                    child:new Column (


                      children: <Widget>[
                        new ItemPage(plt: plt,),

                        new SizedBox(
                          height: 60,
                        ),
                        new Text('Bienvenue ' ,maxLines: 1,textAlign: TextAlign.center,
                            style: new TextStyle(
                              color:Colors.deepOrangeAccent,fontSize:45,fontWeight:FontWeight.bold ,)),
                        new SizedBox(
                          height: 40,
                        ),
/*
                        new Container(

                          child: Image.asset('assets/images/logoresto.png') ,
                          width: 150,
                        ),*/
                        SizedBox(
                          height: 40,
                        ),

                        Container(

                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 29,
                              ),
                              new Padding(
                                padding: EdgeInsets.all(15),
                              ),
                              new Icon(
                                Icons.fastfood,
                                color: Colors.blueGrey,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              new Center (child :
                              Container(
                                  width: 200,
                                  child:TextField(


                                    keyboardType: TextInputType.number,
                                    style: TextStyle(fontSize: 18 ),

                                    onChanged: (String string)
                                    {
                                      setState(() { onChange=string ;       } );

                                    },
                                    onSubmitted:(String string) {   setState(() { onSubmit=string ;       } );   } ,
                                    decoration: new InputDecoration( hintText: 'Votre numero de table',  ) ,

                                  )
                              )),
                            ],
                          ),
                        ),
                        Text(onSubmit == null ? '' :"$onSubmit"),
                        new Container (
                          child : SizedBox(
                            height: 10,
                          ), ),

                        SizedBox(
                          height: 40,
                        ),

                        Container(
                          width: 120,
                          child: FlatButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20.0)),
                            splashColor: Colors.orangeAccent,
                            color: Colors.deepOrange,
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Padding(

                                  padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                                  child: Text('Valider', style: TextStyle(fontSize: 20, color: Colors.white),) ,
                                ),
                              ],
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => acceuil(todo: onChange)
                              ));
                            },
                          ),
                        )
                      ],
                    )





                ))




        )




    );
  }
}