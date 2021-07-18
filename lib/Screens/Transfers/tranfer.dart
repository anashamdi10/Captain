// @dart=2.9
import 'package:captian/Screens/Transfers/transfer2.dart';
import 'package:captian/Screens/bslance_transfer/balanceTransfer.dart';
import 'package:captian/widget/widdget.dart';
import 'package:flutter/material.dart';

class Transfer extends StatelessWidget {
  const Transfer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 7),
        child: SingleChildScrollView(
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
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Transfer2()));
                      },
                      child: Text(
                        "تحويل رصيد",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffDCA310),
                            fontFamily: "Cairo-Regular"),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 1,
                      color: Color(0xffDCA310),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BalanceTransfer()));
                      },
                      child: Text(
                        "إضافة رصيد",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffDCA310),
                            fontFamily: "Cairo-Regular"),
                      ),
                    ),
                  ],
                ),
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
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "تحويلاتك السابقة",
                      style: TextStyle(
                          color: Color(0xff282F39),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Cairo-Regular"),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  height: 10,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xffDCA310),
                ),
              ),
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
    );
  }
}
