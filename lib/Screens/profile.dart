import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'complete_tripe.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffDCA310),
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 210),
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height - 210,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 140, right: 24),
                      child: Container(
                        height: 87,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "نوع السيارة",
                                  style: TextStyle(
                                      color: Color(0xffDCA310),
                                      fontSize: 13,
                                      fontFamily: "Cairo-Regular"),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, right: 13),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "BMW",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontFamily: "Cairo-Regular"),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Container(
                        height: 87,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "سنة الصنع",
                                  style: TextStyle(
                                      color: Color(0xffDCA310),
                                      fontSize: 13,
                                      fontFamily: "Cairo-Regular"),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, right: 13),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "2021",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontFamily: "Cairo-Regular"),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Container(
                        height: 87,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "شركة التصنيع",
                                  style: TextStyle(
                                      color: Color(0xffDCA310),
                                      fontSize: 13,
                                      fontFamily: "Cairo-Regular"),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, right: 13),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "BMW",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontFamily: "Cairo-Regular"),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Container(
                        height: 87,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "رقم اللوحة",
                                  style: TextStyle(
                                      color: Color(0xffDCA310),
                                      fontSize: 13,
                                      fontFamily: "Cairo-Regular"),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, right: 13),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "ب ت ن 1123",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontFamily: "Cairo-Regular"),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Container(
                        height: 87,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "لون المركبة",
                                  style: TextStyle(
                                      color: Color(0xffDCA310),
                                      fontSize: 13,
                                      fontFamily: "Cairo-Regular"),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, right: 13),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "أحمر",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontFamily: "Cairo-Regular"),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.11,
              right: MediaQuery.of(context).size.width * 0.053,
              child: Stack(children: [
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 350,
                      color: Color(0xffDCA310),
                    ),
                    Container(
                      height: 205,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffDCA310)),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Text(
                              "تركي الحربي",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff282F39),
                                  fontFamily: "Cairo-Regular"),
                            ),
                          ),
                          Container(
                            height: 1,
                            width: 350,
                            color: Color(0xffDADEE3),
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CompleteTripe()));
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 30),
                                  child: Column(
                                    children: [
                                      Image(
                                          image: AssetImage("images/secure.png")),
                                      Text(
                                        "3250",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff282F39),
                                            fontFamily: "Cairo-Regular"),
                                      ),
                                      Text(
                                        "عدد المشاوير المكتملة",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff7F7F7F),
                                            fontFamily: "Cairo-Regular"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 30),
                                child: Container(
                                  width: 1,
                                  height: 109,
                                  color: Color(0xffDADEE3),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, left: 30),
                                child: Column(
                                  children: [
                                    Image(
                                        image: AssetImage("images/wallet.png")),
                                    Text(
                                      "2.5",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff282F39),
                                          fontFamily: "Cairo-Regular"),
                                    ),
                                    Text(
                                      "الرصيد الحالي",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff7F7F7F),
                                          fontFamily: "Cairo-Regular"),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                    left: MediaQuery.of(context).size.width*0.1,
                    child: Container(
                        height: 100,
                        width: 180,
                        child: Stack(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Container(
                              height: 100,
                              width: 100,
                              child: CircleAvatar(
                                radius: 100,
                                backgroundImage:
                                    AssetImage("images/sudi.png"),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 70,
                            right: 55,
                            child: Container(
                              color: Colors.white,
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
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily: "Cairo-Regular"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ])))
              ]))
        ]));
  }
}
