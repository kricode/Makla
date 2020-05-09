import 'package:flutter/material.dart';
import '../pages/facture.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import '../widgets/Card.dart';
import '../Utils/Classes.dart';


class Navigation extends StatefulWidget {

List<Commande> commandes = [];
  Navigation({Key key,  @required this.commandes}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {


  List<Commande> commandes = [];

  int _currentIndex = 0;
  PageController _pageController=PageController(
      initialPage: 0,
      viewportFraction: 0.5
  );

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0x612FD5),

      body: Container(

       

        child: PageView(


          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[


            Container( child: Carte(commandes: commandes,),),
            Container(),
            Container(child: facture(commandes: widget.commandes,),),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        iconSize: 30,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('Nos Plats'),
              icon: Icon(Icons.local_pizza),
              activeColor: Colors.orangeAccent,
              inactiveColor: Colors.deepOrange,

          ),
          BottomNavyBarItem(
              title: Text('Nos Menu'),
              icon: Icon(Icons.restaurant_menu),
              activeColor: Colors.orangeAccent,
              inactiveColor: Colors.deepOrange,
          ),
          BottomNavyBarItem(
              title: Text('Facture'),
              icon: Icon(Icons.monetization_on),
              activeColor: Colors.orangeAccent,
              inactiveColor: Colors.deepOrange,
          ),

        ],
      ),
    );
  }
}
