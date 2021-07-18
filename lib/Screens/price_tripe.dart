import 'package:captian/model/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../HomeScreen.dart';

class PriceTripe extends StatelessWidget {
  const PriceTripe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xffDCA310),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: Image(image: AssetImage("images/person.png"))),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              "تركي الحربي",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                  fontFamily: "Cairo-Regular"
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            Container(
              width: MediaQuery.of(context).size.width*0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                    child: Column(
                      children: [
                        // orders
                        Container(
                          width: 190,
                          child: Text(
                            "احتاج اكل من ماكدونالدز موجبة ماك تشكن كبيرة عصير كولا + ايسكريم احتاج اكل من ماكدونالدز موجبة ماك تشكن كبيرة عصير كولا + ايسكريم",
                            textDirection: TextDirection.rtl,
                            style:
                                TextStyle(fontSize: 10, fontFamily: "Cairo-Regular"),
                          ),
                        ),
                        // icon and txt start
                        Container(
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 4, left: 9),
                                child: Container(
                                  height: 17,
                                  width: 14,
                                  child: Image(
                                    image: AssetImage("images/order_logo2.png"),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4, left: 21),
                                child: Text(
                                  "start",
                                  style: TextStyle(
                                      color: Color(0xffDCA310),
                                      fontSize: 10,
                                      fontFamily: "Cairo-Regular"),
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
                                padding: const EdgeInsets.only(top: 4, left: 9),
                                child: Container(
                                  height: 17,
                                  width: 14,
                                  child: Image(
                                    image: AssetImage("images/order_logo.png"),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4, left: 21),
                                child: Text(
                                  "end",
                                  style: TextStyle(
                                      color: Color(0xffDCA310),
                                      fontSize: 10,
                                      fontFamily: "Cairo-Regular"),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  // right side
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 8),
                    child: Column(
                      children: [
                        // image
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Color(0xffF9B329))),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("images/person.png"),
                          ),
                        ),
                        //txt name
                        Text(
                          "خالد الغامدي",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 8,
                              fontFamily: "Cairo-Regular"),
                        ),
                        // rating bar
                        RatingBar.builder(
                          initialRating: 4,
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
                              fontWeight: FontWeight.bold,
                              fontFamily: "Cairo-Regular"),
                        ),
                        // txt direction+km
                        Text(
                          " 15 km",
                          style: TextStyle(
                              color: Color(0xff033456),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Cairo-Regular"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    "تكلفة الوصول ",
                    style: TextStyle(
                        color: Color(0xffDCA310),
                        fontSize: 30,
                        fontFamily: "Cairo-Regular"),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Image(image: AssetImage("images/clothing.png")),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    "25 SR",
                    style: TextStyle(
                        color: Color(0xffDCA310),
                        fontSize: 48,
                        fontFamily: "Cairo-Regular"),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  InkWell(
                    onTap: () {
                      setStar(context);
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xffDCA310),
                      ),
                      child: Center(
                        child: Text(
                          "تم",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: "Cairo-Regular"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.03,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setStar(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffDCA310), width: 3),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    "قبم تركي الحربي ",
                    style: TextStyle(
                        color: Color(0xffDCA310),
                        fontSize: 30,
                        fontFamily: "Cairo-Regular"),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Image(image: AssetImage("images/turky.png")),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  RatingBar.builder(
                    onRatingUpdate: (rating) {},
                    initialRating: 5,
                    minRating: 1,
                    itemSize: 30,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage()));
                      list = false ;
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xffDCA310),
                      ),
                      child: Center(
                        child: Text(
                          "تم",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: "Cairo-Regular"),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
