// @dart=2.9



import 'package:captian/Screens/price_tripe.dart';
import 'package:captian/model/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';



// ignore: must_be_immutable
class AcceptOrder extends StatefulWidget {
  ModelOrder orders;

   AcceptOrder( this.orders,);

  @override
  _AcceptOrderState createState() => _AcceptOrderState( orders);
}

class _AcceptOrderState  extends State<AcceptOrder> {

  ModelOrder _order ;
  GoogleMapController _googleMapController ;
  _AcceptOrderState(this._order);
  BitmapDescriptor mapMarkerStart;
  BitmapDescriptor mapMarkerEnd;
  List <LatLng> plineCoordinates =[];
  Set<Polyline> _polyLinrs =Set<Polyline>();
  PolylinePoints polylinePoints;
  List<Marker> myMarker = [];
  int status = 1 ;
  bool tittle = true ;
  bool orderInformation = true ;
  bool evaluation = true ;


  // add style map
  void addStyle () async{
    String style = await DefaultAssetBundle.of(context).loadString('assets/map_style.json');
    _googleMapController.setMapStyle(style);
  }
  void _onMapCreated(GoogleMapController controller){
    _googleMapController = controller ;
    setPolylines();
    setState(() {
      addStyle() ;
    });
    myMarker.add(Marker(
        markerId: MarkerId("end"),
        position: _order.endtLocation,
        icon: mapMarkerEnd
    ));
    myMarker.add(Marker(
        markerId: MarkerId("start"),
        position: _order.startLocation,
        icon: mapMarkerStart
    ));
  }



  void setCustomMarker() async {

      mapMarkerStart = await BitmapDescriptor.fromAssetImage(
          ImageConfiguration(), 'images/mark_start.png');

      mapMarkerEnd = await BitmapDescriptor.fromAssetImage(
          ImageConfiguration(), 'images/mark_end.png');


  }


  void setPolylines() async {
    Polyline polyline = await drwaPolyLine(_order.startLocation, _order.endtLocation);
    _polyLinrs.add(polyline);
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    polylinePoints =PolylinePoints();

    setCustomMarker();

  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            // google maps
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: GoogleMap(
                compassEnabled: false,
                polylines:_polyLinrs ,
                onMapCreated:_onMapCreated ,
                initialCameraPosition: CameraPosition(
                  target: LatLng(31.03354323320948, 31.392820678398923),
                  zoom: 15,
                ),
                zoomControlsEnabled: false,
                markers: Set.from(myMarker),
              ),
            ),

            // tittle the journey
           tittle?
            Positioned(
              top: MediaQuery.of(context).size.height*0.1,
              left: MediaQuery.of(context).size.width*0.08,
              child: Container(
                height: 60,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(image: AssetImage("images/start.png")),
                      Text(
                        "حي الحمراء شارع فلسطين",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          inherit: false,
                          color: Color(0xff282F39),
                          fontSize: 16,
                            fontFamily: "Cairo-Regular"
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ):Container(),

            // bottom box information
            orderInformation?
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height*0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                 topRight: Radius.circular(20),
                 topLeft: Radius.circular(20),
               ),
                 color: Colors.white,
               ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 26 , left: 23 , bottom: 13),
                      child: Row(

                        children: [
                          // txt cancel trip
                          Text(
                            "إلغاء الرحلة",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              inherit: false,
                                fontFamily: "Cairo-Regular"
                            ),
                          ),
                          // icon map
                          InkWell(
                            onTap: (){
                              MapUtils(_order.startLocation, _order.endtLocation);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 230),
                              child:Container(
                                height: 36,
                                width: 36,
                                  child: Image(image:  AssetImage("images/map.png"),)
                              )
                            ),
                          ),
                        ],
                      ),
                    ),
                    // order information
                    Container(
                      height: 100,
                      width: 290,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: Color(0xff707070)),
                      ),
                      child: Center(
                        child: Container(
                          height: 75,
                          width: 270,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffDCA310)),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child:  Row(
                            children: [
                            InkWell(
                              onTap: (){
                                _makeCall(_order.mobileNumber);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 22 ),
                                child: Container(
                                  height: 38,
                                  width: 35,
                                  child: Image.asset("images/call.png" , color: Color(0xffDCA310),),
                                ),
                              ),
                            ),
                             Container(
                               height: 42,
                               width: 120,
                               child: Text(
                                 _order.order1,
                                 textDirection: TextDirection.rtl,
                                 style: TextStyle(
                                   inherit: false ,
                                   fontSize: 8 ,
                                   color: Colors.black,
                                     fontFamily: "Cairo-Regular"
                                 ),
                               ),
                             ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16 , top: 5),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 49,
                                      width: 49,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xffDCA310)),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: CircleAvatar(
                                        radius: 70,
                                        backgroundImage: AssetImage(_order.imagePAth),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6),
                                      child: Text(
                                        _order.name,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                          fontSize: 7 ,
                                          inherit: false,
                                          color: Colors.black,
                                            fontFamily: "Cairo-Regular"
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ) ,
                        ),
                      ),
                    ),

                    // button Confirmation of arrival to the place of receipt
                    if( status == 1)
                      Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: InkWell(
                        onTap: (){
                          showDialog(
                              barrierDismissible: false,
                              context: context, builder:  (BuildContext context){
                              return Dialog(
                                backgroundColor: Colors.transparent,
                                child: Container(
                                  height: MediaQuery.of(context).size.height*0.20,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                          "هل وصلت ؟",
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                          fontFamily: "Cairo-Regular",
                                            fontSize: 18 ,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (){
                                          setState(() {
                                            status = 2;
                                            Navigator.of(context).pop();
                                          });
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context).size.width*0.6,
                                          height: MediaQuery.of(context).size.height*0.05,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Color(0xffDCA310),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "نعم",
                                              style: TextStyle(
                                                fontFamily: "Cairo-Regular",
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color:Colors.white ,
                                              ),),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                      InkWell(
                                        onTap:(){
                                          Navigator.of(context).pop();
                                        } ,
                                        child: Container(
                                          width: MediaQuery.of(context).size.width*0.6,
                                          height: MediaQuery.of(context).size.height*0.05,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(color: Color(0xff7F7F7F))
                                          ),
                                          child: Center(
                                            child: Text(
                                              "لا",
                                              style: TextStyle(
                                                  fontFamily: "Cairo-Regular",
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 330,
                          decoration: BoxDecoration(
                            color: Color(0xffDCA310),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "تأكيد الوصول لمكان الاستلام",
                              style: TextStyle(
                                inherit: false,
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                  fontFamily: "Cairo-Regular"
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    if(status == 2)
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: InkWell(
                          onTap: (){
                            showDialog(
                                barrierDismissible: false,
                                context: context, builder:  (BuildContext context){
                              return Dialog(
                                backgroundColor: Colors.transparent,
                                child: Container(
                                  height: MediaQuery.of(context).size.height*0.20,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "هل استلمت الطلب ؟",
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                          fontFamily: "Cairo-Regular",
                                          fontSize: 18 ,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (){
                                          setState(() {
                                            status = 3;
                                            Navigator.of(context).pop();
                                          });
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context).size.width*0.6,
                                          height: MediaQuery.of(context).size.height*0.05,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Color(0xffDCA310),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "نعم",
                                              style: TextStyle(
                                                fontFamily: "Cairo-Regular",
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                color:Colors.white ,
                                              ),),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                      InkWell(
                                        onTap:(){
                                          Navigator.of(context).pop();
                                        } ,
                                        child: Container(
                                          width: MediaQuery.of(context).size.width*0.6,
                                          height: MediaQuery.of(context).size.height*0.05,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              border: Border.all(color: Color(0xff7F7F7F))
                                          ),
                                          child: Center(
                                            child: Text(
                                              "لا",
                                              style: TextStyle(
                                                  fontFamily: "Cairo-Regular",
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                              );
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 330,
                            decoration: BoxDecoration(
                              color: Color(0xffDCA310),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "تأكيد استلام الطلب ",
                                style: TextStyle(
                                    inherit: false,
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Cairo-Regular"
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    if(status == 3)
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: InkWell(
                          onTap: (){
                            showDialog(
                                barrierDismissible: false,
                                context: context, builder:  (BuildContext context){
                              return Dialog(
                                backgroundColor: Colors.transparent,
                                child: Container(
                                  height: MediaQuery.of(context).size.height*0.20,
                                  width:  MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "هل وصلت ؟",
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                          fontFamily: "Cairo-Regular",
                                          fontSize: 18 ,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (){
                                          setState(() {
                                            tittle = false;
                                            orderInformation = false ;
                                            Navigator.of(context).pop();
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => PriceTripe()));
                                          });
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context).size.width*0.6,
                                          height: MediaQuery.of(context).size.height*0.05,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Color(0xffDCA310),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "نعم",
                                              style: TextStyle(
                                                  color:Colors.white ,
                                                  fontFamily: "Cairo-Regular",
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                      InkWell(
                                        onTap:(){
                                          Navigator.of(context).pop();
                                        } ,
                                        child: Container(
                                          width: MediaQuery.of(context).size.width*0.6,
                                          height: MediaQuery.of(context).size.height*0.05,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              border: Border.all(color: Color(0xff7F7F7F))
                                          ),
                                          child: Center(
                                            child: Text(
                                              "لا",
                                              style: TextStyle(
                                                  fontFamily: "Cairo-Regular",
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                              );
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 330,
                            decoration: BoxDecoration(
                              color: Color(0xffDCA310),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "تأكيد الوصول لمكان العميل",
                                style: TextStyle(
                                    inherit: false,
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Cairo-Regular"
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ):Container(),

            evaluation?
            Container():Positioned(
                top: MediaQuery.of(context).size.height*0.4,
                left: MediaQuery.of(context).size.width*0.1,
                child: Container(
                  height:MediaQuery.of(context).size.height*0.2,
                  width: MediaQuery.of(context).size.width*0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "قّيم تهاني",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Cairo-Regular",
                        ),
                      ),
                      RatingBar.builder(
                        onRatingUpdate: (rating){},
                        initialRating: 3,
                        minRating: 1,
                        itemSize: 20,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                      Text(
                        " إنهاء",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                            fontFamily: "Cairo-Regular",
                          color: Color(0xffDCA310),
                        ),
                      )
                    ],
                  ),
                ))

          ],
        ),
      ),
    );
  }
}



void MapUtils (LatLng latLngStart, LatLng latLngEnd) async {

 double latStart = latLngStart.latitude;
 double logStart = latLngStart.longitude;
 double latEnd = latLngEnd.longitude;
 double logEnd = latLngEnd.longitude;


  String urlString = "https://www.google.com/maps/dir/$latStart, $logStart/%D9%85%D8%AD%D8%B7%D8%A9+%D9%82%D8%B7%D8%A7%D8%B1+%D8%A7%D9%84%D9%85%D9%86%D8%B5%D9%88%D8%B1%D8%A9+%D9%85%D8%AD%D8%B7%D8%A9+%D9%82%D8%B7%D8%A7%D8%B1+%D8%A7%D9%84%D9%85%D9%86%D8%B5%D9%88%D8%B1%D8%A9%D8%8C+%D8%B4%D8%A7%D8%B1%D8%B9+%D8%AC%D8%A7%D9%85%D8%B9%D8%A9+%D8%A7%D9%84%D8%AF%D9%88%D9%84+%D8%A7%D9%84%D8%B9%D8%B1%D8%A8%D9%8A%D8%A9%D8%8C+%D8%A7%D9%84%D9%85%D9%86%D8%B5%D9%88%D8%B1%D8%A9+(%D9%82%D8%B3%D9%85+2)%D8%8C+%D8%A7%D9%84%D9%85%D9%86%D8%B5%D9%88%D8%B1%D8%A9%D8%8C+%D8%A7%D9%84%D8%AF%D9%82%D9%87%D9%84%D9%8A%D8%A9%E2%80%AD/@31.041995,31.3877797,16z/data=!3m1!4b1!4m11!1m2!2m1!1smaps!4m7!1m0!1m5!1m1!1s0x14f79da334dbc727:0xc59d9ddb9634e85c!2m2!1d$latEnd!2d$logEnd ";
  await launch(urlString);
  print(latLngStart);
  print(latLngEnd);
}

void _makeCall(String number) async {
  await FlutterPhoneDirectCaller.callNumber(number);
  print("make call");
}



  Future <Polyline> drwaPolyLine(LatLng from , LatLng to) async {
    List <LatLng> PolyLineCoordinates = [];
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        "AIzaSyAEpSAxDvuJkzXxHN32K0JJ4egPrjRPv98",
        PointLatLng(from.longitude, from.longitude),
        PointLatLng(to.latitude, to.longitude));



    result.points.forEach((PointLatLng point) {
      PolyLineCoordinates.add(LatLng(point.latitude, point.longitude));
    });
    return Polyline(
        polylineId: PolylineId("polyline_id${result.points.length}"),
        color: Colors.red,
        points: PolyLineCoordinates

    );

  }



