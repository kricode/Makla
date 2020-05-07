
import 'package:flutter/material.dart';


class  Plat {
  int id;
  String nom;
  String image;
  String categorie;
  double quantity;
  List contenu ;
  double prix;
  int rate;
  bool fav= false;


  Plat( {this.id, this.nom, this.image , this.categorie, this.quantity = 1 , this.contenu , this.prix, this.rate, this.fav, });
  void incrementQuantity() {
    this.quantity = this.quantity + 1;
  }

  void decrementQuantity() {
    this.quantity = this.quantity - 1;
  }


}

