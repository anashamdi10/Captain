import 'package:captian/Screens/Transfers/transfer3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Transfer2 extends StatelessWidget {
  const Transfer2({Key? key}) : super(key: key);

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
                              fontFamily: "Cairo-Regular"),
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
                              Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "ادخل معرف الحساب",
                                          style: TextStyle(
                                              color: Color(0xffDCA310),
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Cairo-Regular"
                                          ),
                                        ),
                                        Container(
                                          height: 44,
                                          width: 279,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Color(0xffDCA310)),
                                          ),
                                          child: TextField(
                                            style: TextStyle(
                                                fontFamily: "Cairo-Regular"),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "ادخل معرف الحساب",
                                          style: TextStyle(
                                              color: Color(0xffDCA310),
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Cairo-Regular"),
                                        ),
                                        Container(
                                          height: 44,
                                          width: 279,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Color(0xffDCA310)),
                                          ),
                                          child: TextField(
                                            style: TextStyle(
                                                fontFamily: "Cairo-Regular"),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 26),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "ادخل معرف الحساب",
                                              style: TextStyle(
                                                  color: Color(0xffDCA310),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Cairo-Regular"),
                                            ),
                                            Container(
                                              height: 44,
                                              width: 279,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color: Color(0xffDCA310)),
                                              ),
                                              child: TextField(
                                                style: TextStyle(
                                                    fontFamily: "Cairo-Regular"),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.30,
                                      width: MediaQuery.of(context).size.width,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.05,
                                            ),
                                            Text(
                                              "هل تريد فعلاً تأكيد عملية التحويل",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Color(0xff282F39),
                                                  fontFamily: "Cairo-Regular"),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.05,
                                            ),
                                            Text(
                                              "لن تتمكن إسترداد المبلغ مرة أخرى",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10,
                                                  color: Colors.red,
                                                  fontFamily: "Cairo-Regular"),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 24, right: 24),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Transfer3()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 327,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Color(0xffDCA310)),
                                                  child: Center(
                                                    child: Text(
                                                      "نعم",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                          fontFamily: "Cairo-Regular"),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 24, right: 24, top: 12),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 327,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      border: Border.all(
                                                          color: Color(
                                                              0xff7F7F7F))),
                                                  child: Center(
                                                    child: Text(
                                                      "لا",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff7F7F7F),
                                                        fontSize: 14,
                                                        fontFamily: "Cairo-Regular",
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Container(
                            height: 57,
                            width: 194,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "تحويل",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffDCA310),
                                    fontFamily: "Cairo-Regular"),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ]),
            )));
  }
}
