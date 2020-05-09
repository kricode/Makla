import 'dart:convert';
import '../Utils/Classes.dart';

import 'package:rpc/rpc.dart';
import 'package:flutter/services.dart' show rootBundle;


@ApiClass(version: 'v1')
class PlatApi{

   

 /* 
    //on recupere les données du fichier json pour le transformer en map ce qui ne marche toujours pas
  Map<String, dynamic> get platlist{
    Future<Plat> getdata() async {
        String data = await rootBundle.loadString('assets/Data.json');
              final Map jsonResult = json.decode(data);
              var result = Plat.fromJson(jsonResult);
            return result;
    } 
    Future list = getdata();
    Map _list = list.toMap();

  }*/

  //Map <String, Plat> plat = {};
  



  Future<Map<String, Plat>>  get listePlat{
    

   Future<String> getData() async {
                                return await rootBundle.loadString('assets/limonade.json');
                              }
   Future<Map<String, Plat>>  loadPlat() async {
                                    String jsonString = await getData();
                                    final jsonResponse = json.decode(jsonString);
                                    Plat plats = new Plat.fromJson(jsonResponse);
                                    return plats.toMap();
                                  }
    
    
    
    return loadPlat();

  }
  
    
@ApiMethod(method: 'GET', path: 'Plat')
  Future<List<Plat>> platliste() async{
    var liste = await listePlat;
    var lf  = liste.values.toList();
    return lf;
    
  }
  
  }
   
    
     

