import 'package:flutter/material.dart';
import 'package:makla/pages/list.dart';
import '../Utils/Classes.dart';



class Carte extends StatefulWidget {

  List<Commande> commandes;
  Carte({Key key, @required this.commandes}) : super(key: key);

  
  _CarteState createState() => _CarteState();
}

class _CarteState extends State<Carte> {
  @override
  
  var bannerItems = ["Nos Plats", "Nos Pizzas", "Nos Sandwichs", "Nos Limonades", "Nos Desserts"];
  var bannerPub = [
    "Essayez nos plats variés!",
    "Degustez nos pizzas italiennes !",
    "Le meilleur gout avec nos sandwichs !",
    "Rafraichissez vous avec nos limonades",
    "Un dessert pour Terminer !",
  ];
var bannerImage = [
  "assets/images/cat/plat.jpg",
  "assets/images/cat/pizza.jpg",
  "assets/images/cat/sandwich.jpg",
  "assets/images/cat/limonade.jpg",
  "assets/images/cat/dessert.jpg"
];
  @override
  Widget build(BuildContext context) {
      Plat _plat;

    var screenWidth = MediaQuery.of(context).size.width;

    PageController controller =
        PageController(viewportFraction: 0.8, initialPage: 1);

    List<Widget> banners = new List<Widget>();

    for (int x = 0; x < bannerItems.length; x++) {
      var bannerView = GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
                                builder: (context) => list( categorie: bannerItems[x], commandes: widget.commandes,)));
          print( bannerItems[x] );
        },
        child: Padding(
        
        padding: EdgeInsets.all(10.0),
        child: Container(
          height: 200,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                
                
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                          spreadRadius: 1.0)
                    ]),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image.asset(
                  
                  bannerImage[x],
                  fit: BoxFit.cover,
                ),
                
              ),
              Container(
                
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black])),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      bannerItems[x],
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                    Text(
                      bannerPub[x],
                      style: TextStyle(fontSize: 12.0, color: Colors.white),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Rate",
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                    Text(
                      "Some starts here",
                      style: TextStyle(fontSize: 12.0, color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
      );
      banners.add(bannerView);
    }
    return ListView(
      
        children: banners 
    );
  }
}