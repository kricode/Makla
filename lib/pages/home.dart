import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:maakla/widgets/Navigation.dart';
import './acceuil.dart';



class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  String onChange ;
  String onSubmit ;

  @override
  Widget build(BuildContext context) {

        var width = MediaQuery.of(context).size.width;
            var height = MediaQuery.of(context).size.height;


    return   Scaffold(



        backgroundColor: Colors.white,


        body:  new SingleChildScrollView(
            child: Center(
                child: Container(
                  height: height,
                  decoration: BoxDecoration(
                                           gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.center,
                                        colors: [Colors.orangeAccent[100], Colors.yellow[50]])),

                    child:Center(
                    child :Column (


                      children: <Widget>[
                        ClipPath(
                          clipper: WaveClipperOne(),
                          child:Container(
                            
                            color: Colors.orange,
                            width: width,
                            height: height/3,
                            child:Column(children: <Widget>[
                        SizedBox(
                          height: height / 6,
                        ),
                        new Text('Bienvenue ' ,maxLines: 1,textAlign: TextAlign.center,
                            style: new TextStyle(
                              color:Colors.orange[50],fontSize:45,fontWeight:FontWeight.bold ,)),
                        
/*
                        new Container(

                          child: Image.asset('assets/images/logoresto.png') ,
                          width: 150,
                        ),*/
                        SizedBox(
                          height: 40,
                        ),
                          ],),
                          ) 
                          
                        ),
                        SizedBox(
                          height: height/6,
                        ),

                        

                        Container(

                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: width/6,
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
                                builder: (context) => Navigation()
                              ));
                            },
                          ),
                        )
                      ],
                    )





                ))




        )




    ));
  }
}