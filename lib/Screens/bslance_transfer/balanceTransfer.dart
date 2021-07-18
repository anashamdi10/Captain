// @dart=2.9

import 'package:captian/widget/widdget.dart';
import 'package:flutter/material.dart';


class BalanceTransfer extends StatelessWidget {
  const BalanceTransfer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffDCA310),
        centerTitle: true,
        title: Text(
          "الباقات",
          style: TextStyle(
              color: Colors.white, fontSize: 31, fontFamily: "Cairo-Regular"),
        ),
      ),
      backgroundColor: Color(0xffF7F8F5),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ItemTransfer(context),
              ItemTransfer(context),
              ItemTransfer(context),
              ItemTransfer(context),
            ],
          ),
        ),
      ),
    );
  }
}
