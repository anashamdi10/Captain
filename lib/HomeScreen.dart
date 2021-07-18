// @dart=2.9
import 'package:captian/widget/drawer.dart';
import 'package:captian/widget/widdget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rolling_switch/rolling_switch.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:captian/model/models.dart';

import 'Screens/accept_order.dart';
import 'Screens/refuseOrder.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool orders = false;
  bool message = false;
  bool search = false ;
  bool load = false ;
  int i  = 0;
  ModelOrder _order ;
  GoogleMapController _googleMapController ;
  // add style map
  void addStyle () async{
    String style = await DefaultAssetBundle.of(context).loadString('assets/map_style.json');
    _googleMapController.setMapStyle(style);
  }
  void _onMapCreated(GoogleMapController controller){
    _googleMapController = controller ;

    setState(() {
      addStyle() ;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: DrawerList(),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          // google maps
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: GoogleMap(
              compassEnabled: false,
              onMapCreated:_onMapCreated ,
              initialCameraPosition: CameraPosition(
                target: LatLng(31.03354323320948, 31.392820678398923),
                zoom: 15,
              ),
              zoomControlsEnabled: false,
            ),
          ),
          // sudi menu end daraw
          Builder(builder: (context) {
            return Positioned(
              left: MediaQuery.of(context).size.width*0.8,
              top: MediaQuery.of(context).size.height*0.1,
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: Stack(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffDCA310)),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage("images/sudi.png"),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      child: Container(
                        height: 17,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffDCA310),
                        ),
                        child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(color: Colors.white, fontSize: 10, fontFamily: "Cairo-Regular"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
         // switch button
          Positioned(
            top: MediaQuery.of(context).size.height*0.1,
            left: MediaQuery.of(context).size.width*0.05,
            child: Stack(
              children: [
                Container(
                  height: 45,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: RollingSwitch.widget(
                    initialState: opining,
                    circularColor: Colors.white,
                    onChanged: (bool state) {
                      setState(() {
                        opining = state;
                        orders = false;
                        list = false;
                        message = false;
                        search = false ;
                      });
                    },
                    rollingInfoRight: RollingWidgetInfo(
                      backgroundColor: Colors.white,
                      icon: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Color(0xffDCA310),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Text('متوفر',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11, fontFamily: "Cairo-Regular")))),
                    ),
                    rollingInfoLeft: RollingWidgetInfo(
                      icon: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Text('غير متوفر',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9,fontFamily: "Cairo-Regular")))),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // bottom box
          Positioned(
            top: MediaQuery.of(context).size.height*0.8,
            left: MediaQuery.of(context).size.width*0.15,
            child: opining
                ? list
                // box بحث عن الطلبات
                    ? Container()
                    : Container(
                        height: 138,
                        width: 280,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Container(
                              width: 280,
                              height: 93,
                              child: Center(
                                child: Text(
                                  "هل تريد البحث عن الطلب ؟",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                      fontFamily: "Cairo-Regular"
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  orders = true;
                                  list = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffDCA310),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    )),
                                height: 45,
                                width: 280,
                                child: Center(
                                  child: Text(
                                    "بحث",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,fontFamily: "Cairo-Regular"),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                // غير متوفر  box
                : Container(
                    height: 80,
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "انت غير متوفر",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "Cairo-Regular"),
                      ),
                    ),
                  ),
          ),

          // show list orders
          orders
              ? Positioned(
                top:MediaQuery.of(context).size.height*0.30 ,
                left: MediaQuery.of(context).size.width*0.1,
                width: MediaQuery.of(context).size.width*0.8,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    textDirection: TextDirection.rtl,
                    children: [
                      Row(
                        children: [
                          // icon refresh
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30, top: 20),
                            child: InkWell(
                              child: Icon(
                                Icons.refresh,
                                color: Color(0xffDCA310),

                              ),
                            ),
                          ),
                          // txt orders
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 30, left: 65),
                            child: Text(
                              "الطلبات",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffDCA310),
                                  fontFamily: "Cairo-Regular"
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.60,
                        width: 275,
                        child: ListView.builder(
                            itemCount: ordersList.length,
                            itemBuilder: (context, index) {
                              ModelOrder  modelOrder = ordersList[index];
                              return  Padding(
                                padding: const EdgeInsets.only(bottom: 7,),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Color(0xffDCA310))
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              // orders
                                              Container(
                                                width: 190,
                                                child: Text(
                                                  modelOrder.order1,
                                                  textDirection: TextDirection.rtl,
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                      fontFamily: "Cairo-Regular"
                                                  ),
                                                ),
                                              ),
                                              // icon and txt start
                                              Container(
                                                width: 200,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 4 , left: 9),
                                                      child: Container(
                                                        height: 17,
                                                        width: 14,
                                                        child: Image(image: AssetImage("images/order_logo2.png"),),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 4 , left: 21),
                                                      child: Text(
                                                        modelOrder.start,
                                                        style: TextStyle(color: Color(0xffDCA310), fontSize: 10, fontFamily: "Cairo-Regular"),
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                              ),
                                              // icon and txt end
                                              Container(
                                                width: 200,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 4 , left: 9),
                                                      child: Container(
                                                        height: 17,
                                                        width: 14,
                                                        child: Image(image: AssetImage("images/order_logo.png"),),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 4 , left: 21),
                                                      child: Text(
                                                        modelOrder.end,
                                                        style: TextStyle(color: Color(0xffDCA310),fontSize: 10,fontFamily: "Cairo-Regular"),
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          // right side
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15, top:8 ),
                                            child: Column(
                                              children: [
                                                // image
                                                Container(
                                                  width: 45,
                                                  height: 45,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(50),
                                                      border: Border.all(color: Color(0xffF9B329))
                                                  ),
                                                  child: CircleAvatar(
                                                    backgroundImage: AssetImage(modelOrder.imagePAth),
                                                  ),
                                                ),
                                                //txt name
                                                Text(
                                                  modelOrder.name,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 8,
                                                      fontFamily: "Cairo-Regular"
                                                  ),
                                                ),
                                                // rating bar
                                                RatingBar.builder(
                                                  initialRating: modelOrder.star,
                                                  minRating: 1,
                                                  itemSize: 5,
                                                  direction: Axis.horizontal,
                                                  itemCount: 5,
                                                  itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                                  itemBuilder: (context, _) => Icon(
                                                    Icons.circle,
                                                    color: Colors.amber,
                                                  ),
                                                ),
                                                //txt distance
                                                Text(
                                                  "المسافة",
                                                  style: TextStyle(
                                                      color: Color(0xff033456),
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold, fontFamily: "Cairo-Regular"
                                                  ),
                                                ),
                                                // txt direction+km
                                                Text(
                                                  modelOrder.direction.toString()+"km",
                                                  style: TextStyle(
                                                      color: Color(0xff033456),
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                      fontFamily: "Cairo-Regular"
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      // button accept
                                      InkWell(
                                        onTap: (){
                                          setState(() {
                                            orders = false;
                                            message = true;
                                            _order = modelOrder ;

                                          });
                                        },
                                        child: Container(
                                          height: 32,
                                          width: 300,
                                          decoration: BoxDecoration(
                                            color: Color(0xffF9B329),
                                            borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(20),
                                                bottomLeft: Radius.circular(20)
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "موافق",
                                              style: TextStyle(fontSize: 13 , color: Colors.white , fontWeight: FontWeight.bold,fontFamily: "Cairo-Regular"),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              )
              : Container(),

          message?
              Positioned(
                top: MediaQuery.of(context).size.height*0.25,
                left: MediaQuery.of(context).size.width*0.1,
                child: Container(
                  height: 336,
                  width:300 ,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      // txt accept place ?
                      Padding(
                        padding: const EdgeInsets.only(top: 11, bottom: 17),
                        child: Text(
                          "هل تقبل الطلب ؟",
                          style: TextStyle(
                            color: Color(0xff282F39),
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                              fontFamily: "Cairo-Regular"
                          ),
                        ),
                      ),

                      Container(
                       height: 120,
                       width: 270,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         border: Border.all(color: Color(0xffDCA310)),
                       ),
                        child: Row(
                          children: [
                            Column  (
                              children: [
                                // order name
                                Container(
                                  width: 200,
                                  child: Text(
                                    _order.order1,
                                    style: TextStyle(
                                      fontSize: 9,
                                        fontFamily: "Cairo-Regular"
                                    ),
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      //icon start place
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20 , left: 9),
                                        child: Container(
                                          height: 17,
                                          width: 14,
                                          child: Image(image: AssetImage("images/order_logo2.png"),),
                                        ),
                                      ),
                                      // start place
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15 , left: 21),
                                        child: Text(
                                          _order.start ,
                                          style: TextStyle(color: Color(0xffDCA310), fontSize:  10, fontFamily: "Roboto-Black"),
                                        ),
                                      ),
                                      // المسافة txt
                                      Padding(
                                        padding: const EdgeInsets.only(top: 25 , left: 50),
                                        child: Text(
                                         "المسافة",
                                          style: TextStyle(
                                              color: Color(0xff033456),
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold, fontFamily: "Cairo-Regular"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      // icon end place
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0 , left: 9),
                                        child: Container(
                                          height: 17,
                                          width: 14,
                                          child: Image(image: AssetImage("images/order_logo.png"),),
                                        ),
                                      ),
                                      // place end
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0 , left: 21),
                                        child: Text(
                                          _order.end,
                                          style: TextStyle(color: Color(0xffDCA310),fontSize: 10, fontFamily: "Cairo-Regular"),
                                        ),
                                      ),
                                      // direction + km
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0 , left: 60),
                                        child: Text(
                                          _order.direction.toString() +"KM",
                                          style: TextStyle(
                                              color: Color(0xff033456),
                                              fontSize: 12,
                                            fontWeight: FontWeight.bold,fontFamily: "Cairo-Regular"
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top:1 ),
                              child: Column(
                                children: [
                                  // image
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(color: Color(0xffF9B329))
                                    ),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(_order.imagePAth),
                                    ),
                                  ),
                                  // order name
                                  Text(
                                    _order.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 8,
                                        fontFamily: "Cairo-Regular"
                                    ),
                                  ),
                                  // rating bar
                                  RatingBar.builder(
                                    initialRating: _order.star,
                                    minRating: 1,
                                    itemSize: 5,
                                    direction: Axis.horizontal,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.circle,
                                      color: Colors.amber,
                                    ),
                                  ),
                                  // txt price
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "السعر",
                                      style: TextStyle(
                                          color: Color(0xff033456),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold, fontFamily: "Cairo-Regular"),
                                    ),
                                  ),
                                  // estamited price
                                  Padding(
                                    padding: const EdgeInsets.only(top:5),
                                    child: Text(
                                      "15 RS",
                                      style: TextStyle(
                                          color: Color(0xff033456),
                                          fontSize: 10  ,
                                          fontWeight: FontWeight.bold, fontFamily: "Cairo-Regular"),
                                    ),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          //txt حدد السعر
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 7 ,horizontal: 17),
                            child: Text(
                              "حدد السعر",
                              style: TextStyle(
                                color: Color(0xff282F39),
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                  fontFamily: "Cairo-Regular"
                              ),
                            ),
                          )
                        ],
                      ) ,
                      // price
                      Container(
                        height: 44,
                        width: 267,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffDCA310)),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign:TextAlign.center,
                        ),
                      ),
                      // buttons
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            // button الغاء
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  message = false;
                                  orders = true;
                                });
                                showDialog(
                                    barrierDismissible: false,
                                    context: context, builder: (BuildContext context){
                                  return Dialog(
                                    child: Container(
                                      height: MediaQuery.of(context).size.height*0.34,
                                      child: Column(
                                        children: [
                                          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                                          Text(
                                            "هل تريد فعلاً تأكيد إلغاء الرحلة",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Color(0xff282F39),fontFamily: "Cairo-Regular"
                                            ),),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                          Text(
                                            "سيتم خصم 3 نقاط من رصيدك ولن يتم إستردادها",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                color: Colors.red, fontFamily: "Cairo-Regular"
                                            ),),
                                          //  refuse order(yes)
                                          Padding(
                                            padding: const EdgeInsets.only(left: 24 , right: 24),
                                            child: InkWell(
                                              onTap: (){
                                                Navigator.push(context,
                                                    MaterialPageRoute(builder: (context) => RefuseOrder()));
                                              },
                                              child: Container(
                                                height: 40,
                                                width: 327,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(20),
                                                    color: Color(0xffDCA310)
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "نعم",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,fontFamily: "Cairo-Regular"
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          // refuse order(no)
                                          Padding(
                                            padding: const EdgeInsets.only(left: 24 , right: 24 , top: 12),
                                            child:  InkWell(
                                              onTap:(){
                                                Navigator.of(context).pop();
                                              } ,
                                              child: Container(
                                                height: 40,
                                                width: 327,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(20),
                                                    border: Border.all(color: Color(0xff7F7F7F))
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "لا",
                                                    style: TextStyle(
                                                        color: Color(0xff7F7F7F),
                                                        fontSize: 14, fontFamily: "Cairo-Regular"
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                              },
                              child: Container(
                                height: 41,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20)
                                  )
                                ),
                                child: Center(
                                  child: Text(
                                    "الغاء",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17 ,
                                      fontWeight: FontWeight.bold, fontFamily: "Cairo-Regular"
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )   ,
                          // button وافق
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  search = true;
                                  orders = false;
                                  message = false;
                                  list = true ;

                                });
                              },
                              child: Container(
                                height: 41,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Color(0xffF9B329),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)
                                  )
                                ),
                                child: Center(
                                  child: Text(
                                    "موافق",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold, fontFamily: "Cairo-Regular"
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )

                    ],
                  ),
                ),
              )
              :Container(),

          // message refuse?
          messageRefuse?
           Dialog(
              child: Container(
                height: MediaQuery.of(context).size.height*0.1,
                width: MediaQuery.of(context).size.width*0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child:Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "طلب ملغي",
                        style: TextStyle(
                            color: Color(0xffDCA310),
                            fontSize: 24, fontFamily: "Cairo-Regular"
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          messageRefuse = false ;
                          list = false ;
                        });
                      },
                      child: Container(
                        height: 20,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffDCA310)
                        ),
                        child: Center(
                          child: Text(
                            "موافق",
                            style: TextStyle(
                                  color: Colors.white,
                                fontFamily: "Cairo-Regular"
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ),
            ) :Container(),


          search?
          Positioned(
              top: MediaQuery.of(context).size.height*0.3,
              left: MediaQuery.of(context).size.width*0.1,
              child: Container(
                height: MediaQuery.of(context).size.height*0.20,
                width: MediaQuery.of(context).size.width*0.8,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*0.0227,),
                    Text(
                      "تم قبول الطلب في انتظار ",
                      style: TextStyle(
                        fontSize: 20 ,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                    Text(
                      " رد العميل" ,
                       style: TextStyle(
                           fontSize: 20 ,
                           fontFamily: "Cairo-Regular"
                       ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          load = true ;
                          Future.delayed(Duration(seconds: 5),(){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AcceptOrder(_order)));
                          });
                        });
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.0576,
                        decoration: BoxDecoration(
                          color: Color(0xffF9B329),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              load?
                              Row(
                                children: [
                                  Container(
                                      height:30,
                                      width: 30,
                                      child: Image(image: AssetImage("images/loads.gif") ,color: Colors.white,),
                                  ),
                                ],
                              )
                                  :Image(image: AssetImage("images/load1.png"),),
                              SizedBox(width: 10,),
                              Text(
                                "تحديث",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                    fontFamily: "Cairo-Regular"
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
          )
          :Container()

        ]),
      ),
    );
  }


}
