import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ModelOrder {
  String order1;

  String imagePAth;

  double star;

  String name;

  int direction;

  String start;

  String end;

  LatLng startLocation ;
  LatLng endtLocation ;

  String mobileNumber ;



  ModelOrder({
    required this.order1,
    required this.imagePAth,
    required this.star,
    required this.name,
    required this.direction,
    required this.startLocation ,
    required this.start,
    required this.end,
    required this.endtLocation,
    required this.mobileNumber
  });

}

class NewObject {
  final String title;


  NewObject(this.title, );
}

List<ModelOrder> ordersList= [
  ModelOrder(
      order1:  "احتاج اكل من ماكدونالدز موجبة ماك تشكن كبيرة عصير كولا + ايسكريم احتاج اكل من ماكدونالدز موجبة ماك تشكن كبيرة عصير كولا + ايسكريم",
      imagePAth:  "images/sudi.png",
      star:  3,
      name:  "خالد الغامدي",
      direction: 15,
      start: "start",
      end:"end",
      startLocation: LatLng(31.05048967233032, 31.395608351992838),
      endtLocation: LatLng(31.04210402606738, 31.37844225784102),
      mobileNumber: "01006471497"

  ),

  ModelOrder(
      order1:  "احتاج اكل من ماكدونالدز موجبة ماك تشكن كبيرة عصير كولا + ايسكريم احتاج اكل من ماكدونالدز موجبة ماك تشكن كبيرة عصير كولا + ايسكريم",
      imagePAth:  "images/sudi.png",
      star:  4,
      name:  "خالد القحطاني",
      direction: 30,
      start: "start",
      end:"end",
      startLocation: LatLng(31.041006761302143, 31.385915856259825),
      endtLocation: LatLng(31.04210402606738, 31.378442257841016),
      mobileNumber: "0100677857"
  ),

  ModelOrder(
      order1:  "احتاج اكل من ماكدونالدز موجبة ماك تشكن كبيرة عصير كولا + ايسكريم احتاج اكل من ماكدونالدز موجبة ماك تشكن كبيرة عصير كولا + ايسكريم",
      imagePAth:  "images/sudi.png",
      star:  5,
      name:  "تركي",
      direction: 45,
      start: "start",
      end:"end",
      startLocation: LatLng(31.046016993448372, 31.38829365676484),
      endtLocation: LatLng(31.04210402606738, 31.378442257841016),
      mobileNumber: "010015040789",
  ),


  ModelOrder(
    order1:  "احتاج اكل من ماكدونالدز موجبة ماك تشكن كبيرة عصير كولا + ايسكريم احتاج اكل من ماكدونالدز موجبة ماك تشكن كبيرة عصير كولا + ايسكريم",
    imagePAth:  "images/sudi.png",
    star:  5,
    name:  "تركي",
    direction: 45,
    start: "start",
    end:"end",
    startLocation: LatLng(31.046016993448372, 31.38829365676484),
    endtLocation: LatLng(31.04210402606738, 31.378442257841016),
    mobileNumber: "010015040789",
  ),

];


bool messageRefuse = false ;
bool opining = false ;
bool list = false;


