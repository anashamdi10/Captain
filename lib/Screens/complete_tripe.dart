import 'package:captian/widget/widdget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CompleteTripe extends StatelessWidget {
  const CompleteTripe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "إجمالي الرصيد الحالي",
                  style: TextStyle(
                      color: Color(0xffDCA310),
                      fontSize: 16,
                      fontFamily: "Cairo-Regular"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SAR",
                  style: TextStyle(
                      color: Color(0xffDCA310),
                      fontSize: 14,
                      fontFamily: "Cairo-Regular"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    "250",
                    style: TextStyle(
                        color: Color(0xff282F39),
                        fontSize: 25,
                        fontFamily: "Cairo-Regular"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffDCA310),
              ),
            ),
            Image(image: AssetImage("images/secure.png")),
            Text(
              "الرحلات المكتملة",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                  fontFamily: "Cairo-Regular"
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "الأسبوع الحالي",
                  style: TextStyle(
                    color: Color(0xffDCA310),
                    fontSize: 15,
                      fontFamily: "Cairo-Regular"
                  ),
                ),
                Text(
                  "الأسبوع لماضي",
                  style: TextStyle(
                      color: Color(0xff798088),
                      fontSize: 15,
                      fontFamily: "Cairo-Regular"
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SAR",
                  style: TextStyle(
                      color: Color(0xffDCA310),
                      fontSize: 14,
                      fontFamily: "Cairo-Regular"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    "1252",
                    style: TextStyle(
                        color: Color(0xff282F39),
                        fontSize: 25,
                        fontFamily: "Cairo-Regular"),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffDADEE3),
            ),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width*0.07,),
                Column(
                  children: [
                    Text(
                      "85",
                      style: TextStyle(
                          color: Color(0xff282F39),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                    Text(
                      "عدد المشاوير",
                      style: TextStyle(
                        color: Color(0xffDCA310),
                        fontSize: 16,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.07,),
                Container(
                  height: MediaQuery.of(context).size.height*0.1,
                  width: 1,
                  color: Color(0xffDADEE3),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.07,),
                Column(
                  children: [
                    Text(
                      "8:30",
                      style: TextStyle(
                          color: Color(0xff282F39),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                    Text(
                      "ساعة العمل",
                      style: TextStyle(
                        color: Color(0xffDCA310),
                        fontSize: 18,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.07,),
                Container(
                  height: MediaQuery.of(context).size.height*0.1,
                  width: 1,
                  color: Color(0xffDADEE3),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                Column(
                  children: [
                    Text(
                      "1252  SAR",
                      style: TextStyle(
                          color: Color(0xff282F39),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                    Text(
                      "المبلغ المحصل",
                      style: TextStyle(
                        color: Color(0xffDCA310),
                        fontSize: 18,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
               height: 1,
               width: MediaQuery.of(context).size.width,
               color: Color(0xffDADEE3),
             ),
            Container(
                height: MediaQuery.of(context).size.height*0.43,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ItemTransferMoney("طارق الجفالي", "52 SAR", context),
                      ItemTransferMoney("مطعم بلاجو", "32 SAR",context),
                      ItemTransferMoney("السلام مول", "32 SAR",context),
                      ItemTransferMoney("الردسي مول", "92 SAR",context),
                      ItemTransferMoney("الردسي مول", "92 SAR",context),
                      ItemTransferMoney("الردسي مول", "92 SAR",context),
                    ],
                  ),
                ),
              ),



          ],
        ),
      ),
    );
  }
}



