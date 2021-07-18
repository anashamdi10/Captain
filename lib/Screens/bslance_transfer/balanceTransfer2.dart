// @dart=2.9

import 'package:captian/model/models.dart';
import 'package:flutter/material.dart';

class BalanceTransfer2 extends StatefulWidget {
  const BalanceTransfer2({Key key}) : super(key: key);

  @override
  _BalanceTransfer2State createState() => _BalanceTransfer2State();
}

class _BalanceTransfer2State extends State<BalanceTransfer2> {
  static List<NewObject> items = <NewObject>[
    NewObject(''),
    NewObject('بنك القاهرة'),
    NewObject('بنك الأهلي '),
    NewObject('البنك العربي القطري'),
  ];
  static List<NewObject> items1 = <NewObject>[
    NewObject(''),
    NewObject('500 SR'),
    NewObject('100 SR '),
    NewObject('200 SR'),
  ];
  NewObject value = items.first;
  NewObject value1 = items1.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF7F8F5),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xffDCA310),
          centerTitle: true,
          title: Text(
            "معلومات التحويل",
            style: TextStyle(
                color: Colors.white, fontSize: 31, fontFamily: " Cairo-Regular"),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 29, left: 21, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 34, right: 27, bottom: 8),
                          child: Text(
                            " اسم المحول",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffDADEE3),
                                fontFamily: " Cairo-Regular"),
                          ),
                        ),
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 27),
                            child: Text(
                              "تركى الحربى",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff1D2226),
                                  fontFamily: " Cairo-Regular"),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 27, left: 30),
                        child: Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Color(0xffDADEE3),
                        ),
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 27, bottom: 8),
                          child: Text(
                            " اسم البنك المحول منه",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffDADEE3),
                                fontFamily: " Cairo-Regular"),
                          ),
                        ),
                      ]),
                      Container(
                        width: 350,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<NewObject>(
                            value: value, // currently selected item
                            items: items
                                .map((item) => DropdownMenuItem<NewObject>(
                                      child: Row(
                                        children: [
                                          Text(
                                            item.title,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                                fontFamily: " Cairo-Regular"
                                            ),
                                          ),
                                        ],
                                      ),
                                      value: item,
                                    ))
                                .toList(),
                            onChanged: (value) => setState(() {
                              this.value = value;
                            }),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 27, left: 30),
                        child: Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Color(0xffDADEE3),
                        ),
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 27, bottom: 8),
                          child: Text(
                            " تاريخ و وقت التحويل",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffDADEE3),
                                fontFamily: " Cairo-Regular"),
                          ),
                        ),
                      ]),
                      Container(
                          width: 300,
                          child: TextField(
                            style: TextStyle(fontFamily: " Cairo-Regular"),
                          )),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 27, bottom: 8),
                          child: Text(
                            " اسم البنك المحول منه",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffDADEE3),
                                fontFamily: " Cairo-Regular"),
                          ),
                        ),
                      ]),
                      Container(
                        width: 350,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<NewObject>(
                            value: value1, // currently selected item
                            items: items1
                                .map((item) => DropdownMenuItem<NewObject>(
                                      child: Row(
                                        children: [
                                          Text(
                                            item.title,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                                fontFamily: " Cairo-Regular"
                                            ),
                                          ),
                                        ],
                                      ),
                                      value: item,
                                    ))
                                .toList(),
                            onChanged: (value) => setState(() {
                              this.value1 = value;
                            }),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 14, left: 11, right: 10),
                    child: Container(
                      height: 78,
                      width: 391,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.add_photo_alternate,
                            color: Color(0xffD91A38),
                          ),
                          Text(
                            "صورة التحويل",
                            style: TextStyle(
                                color: Color(0xffD91A38),
                                fontSize: 24,
                                fontFamily: " Cairo-Regular"),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: Container(
                            height: 52,
                            width: 168,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffFA4248)),
                            child: Center(
                              child: Text(
                                "رجوع",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: " Cairo-Regular"),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            height: 52,
                            width: 168,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffDCA310)),
                            child: Center(
                              child: Text(
                                "التالى",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: "Cairo-Regular"),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
