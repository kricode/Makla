import 'package:flutter/material.dart';
import '../widgets/commande.dart';
import '../Utils/Classes.dart';
import '../widgets/commande.dart';
import '../widgets/commande.dart';



class facture extends StatefulWidget {
  List<Commande> commandes;
  facture({Key key , @required this.commandes}) : super(key: key);

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
              Container(height: screenHeight*2/3,
              
                child: ListView.builder(
                itemCount: 10,
                padding: const EdgeInsets.all(16.0),
                itemBuilder: (BuildContext context, int index){
                  return Text("hu");
                  //return commande(com: widget.commandes[index],);

                },
              
              ),),
            
               Align(
      alignment: Alignment.center,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        splashColor: Colors.orangeAccent,
        color: Colors.deepOrange,
        onPressed: () {
          print("boutton cliqué");
                    if ( widget.commandes == null){
          return 
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Erreur'),
                  content: Text(
                    'Vous n''avez rien commandé!!',
                  ),
                  actions: <Widget>[
                    
                    FlatButton(
                      child: Text('OK'),
                      onPressed: () => Navigator.pop(context, 'OK'),
                    ),
                  ],
                ),
              ).then((returnVal) {
                if (returnVal != null) {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Cherchez vos plats dans notre menu!'),
                      action: SnackBarAction(label: 'OK', onPressed: () {}),
                    ),
                  );
                }
              });
        
        }else return {
          showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Confirmation'),
                  content: Text(
                    'Etes-vous sûrs de votre choix?',
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: Text('Non'),
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                    ),
                    FlatButton(
                      child: Text('Oui'),
                      onPressed: () => Navigator.pop(context, 'OK'),
                    ),
                  ],
                ),
              ).then((returnVal) {
                if (returnVal != null) {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('You clicked: $returnVal'),
                      action: SnackBarAction(label: 'OK', onPressed: () {}),
                    ),
                  );
                }
              })

        };
      
        },
        child: IconButton(
          icon: Icon(Icons.check, color: Colors.white70,),
          
          
        ),
        
        
        elevation: 10,
      ),
    )

            
            ],
          ),
      ),
              
      
    );
  }
}

