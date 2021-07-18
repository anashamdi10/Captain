import 'package:captian/widget/widdget.dart';
import 'package:flutter/material.dart';


class Notification1 extends StatelessWidget {
  const Notification1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDCA310),
      body: Container(
        color: Color(0xffDCA310),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 86,width: 99,child: Image(image: AssetImage("images/splash_logo.png"))),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              ItemNotification(),
              ItemNotification(),
              ItemNotification(),
              ItemNotification(),
            ],
          ),
        ),
      ),
    );
  }
}
