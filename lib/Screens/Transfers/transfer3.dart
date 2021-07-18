// @dart=2.9
import 'package:flutter/material.dart';

class Transfer3 extends StatelessWidget {
  const Transfer3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.only(
              top: 50,
            ),
            child: SingleChildScrollView(
                child: Column(children: [
              Container(
                height: 150,
                child: Column(
                  children: [
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
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Color(0xffDCA310),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        "تحويل رصيد",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffDCA310),
                          fontFamily: "Cairo-Regular",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xffDCA310),
                height: MediaQuery.of(context).size.height - 200,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Container(
                        height: 373,
                        width: 346,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.1,
                            ),
                            Text(
                              "تمت عملية التحويل بنجاح",
                              style: TextStyle(
                                  fontSize: 31,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffDCA310),
                                  fontFamily: "Cairo-Regular"),
                            ),
                            Image(image: AssetImage("images/right_square.png")),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1),
                      InkWell(
                        // onTap: () {
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context) => Order()));
                        // },
                        child: Container(
                          height: 57,
                          width: 194,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              "عودة",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffDCA310),
                                  fontFamily: "Cairo-Regular"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1),
                    ],
                  ),
                ),
              )
            ]))));
  }
}
