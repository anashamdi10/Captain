// @dart=2.9

import 'package:captian/Screens/bslance_transfer/balanceTransfer2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget Field({@required TextInputType keyboardType}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10, top: 40),
    child: TextField(
      keyboardType: keyboardType,
      style: TextStyle(color: Colors.white, fontFamily:"Cairo-Regular"),
    ),
  );
}

Widget ItemNotification() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Container(
      width: 360,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 13),
                child: Text(
                  "مايو 3 2020 3:23 م",
                  style: TextStyle(fontSize: 11, fontFamily:"Cairo-Regular"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 115, top: 13),
                child: Text(
                  "فريق عمل بيشي",
                  style: TextStyle(fontSize: 15, fontFamily:"Cairo-Regular"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Container(
                  height: 25,
                  width: 25,
                  child: Image(
                    image: AssetImage("images/notification_icon.png"),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              "عزيز الكابتن شكراً لك و لمجهودك أنت الأفضل",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily:"Cairo-Regular"),
            ),
          )
        ],
      ),
    ),
  );
}

Widget ItemTransfer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 9),
    child: InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => BalanceTransfer2()));
      },
      child: Container(
        height: 132,
        width: 394,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [BoxShadow(color: Color(0xff00000029), blurRadius: 2)]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 106,
              width: 106,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                  color: Color(0xffDCA310)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "30",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 49,
                        fontWeight: FontWeight.bold,
                        fontFamily:"Cairo-Regular"),
                  ),
                  Text(
                    "يوم",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily:"Cairo-Regular"),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "اسم الباقة ",
                  style: TextStyle(
                      color: Color(0xffD91A38),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily:"Cairo-Regular"),
                ),
                Text(
                  "5000 SR ",
                  style: TextStyle(
                      color: Color(0xffD91A38),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      fontFamily:"Cairo-Regular"),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget ItemTransferMoney(String name, String price, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 15.5, left: 25, right: 18),
    child: Container(
      height: 63.5,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                "3:32",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff282F39),
                    fontFamily: "Cairo-Regular"),
              ),
              Container(
                height: 18,
                width: 35,
                decoration: BoxDecoration(
                    color: Color(0xffF2F5F7),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "AM",
                    style: TextStyle(
                        fontSize: 11,
                        color: Color(0xff7F7F7F),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo-Regular"),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 27),
            child: Column(
              children: [
                Text(
                  name,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 16, color: Color(0xff282F39),fontFamily: "Cairo-Regular"),
                ),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.35,),
          Column(
            children: [
              Text(
                price,
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff282F39),
                    fontFamily: "Cairo-Regular"),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget PointShow() {
  return Container(
    height: 31,
    width: 102,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Colors.white,
      border: Border.all(color: Color(0xffDCA310))
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "نقطة",
            style: TextStyle(
                color: Colors.black, fontSize: 13, fontFamily: "Cairo-Regular"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "3252",
            style: TextStyle(
                color: Colors.black, fontSize: 13,fontFamily: "Cairo-Regular"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Container(
              height: 22,
              width: 13,
              child: Image(
                image: AssetImage("images/gift.png"),
                color: Color(0xffDCA310),
              )),
        ),
      ],
    ),
  );
}

Widget MoneyShow() {
  return Container(
    height: 37,
    width: 102,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
        border: Border.all(color: Color(0xffDCA310))),
    child: Row(
      children: [
        Column(
          children: [
            Text("رصيد المحفظة",
                style: TextStyle(fontSize: 10, fontFamily: "Cairo-Regular")),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "2525 SR",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xffDCA310),
                    fontFamily: "Cairo-Regular"),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Container(
              height: 22,
              width: 22,
              child: Image(
                image: AssetImage("images/wallet.png"),
                color: Color(0xffDCA310),
              )),
        ),
      ],
    ),
  );
}

Widget CircleProfileImge( Color colors) {
  return Container(
    height: 70,
    width: 180,
    child: Stack(
      children: [
        Container(
          height: 80,
          width: 100,
        ),
        Positioned(
          top: 50,
          left: 30,
          child: Container(
            width: 53,

            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image(
                    image: AssetImage("images/star.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "3.98",
                    style: TextStyle(
                        color: colors,
                        fontSize: 13,
                        fontFamily: "Cairo-Regular"),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffDCA310)),
              borderRadius: BorderRadius.circular(50),
            ),
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("images/person.png"),
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: Text(
            "عادل مرتع",
            style: TextStyle(
              fontFamily: "Cairo-Regular",
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: colors,
            ),
          ),
        )
      ],
    ),
  );
}
