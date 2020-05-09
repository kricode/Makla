
import 'package:flutter/material.dart';
import 'dart:convert';


class  Plat {
  String id;
  String nom;
  String image;
  String categorie;
  double quantity;
  List<String> contenu ;
  double prix;
  



  Plat( {this.id, this.nom, this.image , this.categorie, this.quantity = 1 , this.contenu , this.prix,  });
  
  Plat.fromJson(Map<String, dynamic> json){
    this.id = json['id'];
    this.nom = json['nom'];
    this.image = json['image'];
    this.categorie = json['categorie'];
    this.quantity = json['quantity'];
    this.contenu = json['contenu'];
    this.prix = json['prix'];
  }
  Map<String, dynamic> toMap(){

        return{
            'id': id,
            'nom': nom,
            'image': image,
            'categorie': categorie,
            'quantity': quantity,
            'contenu': contenu,
            'prix': prix,
            
            
        };
  }



Map<String, dynamic> toJson() {
  return{
    'id': id,
    'nom': nom,
    'image': image,
    'categorie': categorie,
    'quantity': quantity,
    'contenu': contenu,
    'prix': prix,
  };
}

  
  void incrementQuantity() {
    this.quantity = this.quantity + 1;
  }

  void decrementQuantity() {
    this.quantity = this.quantity - 1;
  }


}

class Commande{
  String nom;
  String image;
  double quantite;
  double prix;

  Commande({this.nom, this.image, this.quantite, this.prix});


  Commande.fromJson(Map<String, dynamic> json){
    this.nom = json['nom'];
    this.image = json['image'];
    this.quantite = json['quantite'];
    this.prix = json['prix'];
  }

  Map<String, dynamic> toMap(commande){
    return{
          'nom' : nom,
          'image' : image,
          'quantite' : quantite,
          'prix' : prix,
    };
  }
Map<String, dynamic> toJson() {
  return{
    'nom': nom,
    'image': image,
    'quantite': quantite,
    'prix': prix,
  };

}
void increment(Commande cmd){
  this.quantite++;
}

void decrement(Commande cmd){

    if(cmd.quantite >= 1){
      cmd.quantite --;
    } else print("vous avez depassé");

 }
}


