// @dart=2.9

import 'package:captian/Screens/Transfers/tranfer.dart';
import 'package:captian/Screens/askBeshi.dart';
import 'package:captian/Screens/notification.dart';
import 'package:captian/Screens/profile.dart';
import 'package:captian/widget/widdget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../login.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 800,
            width: 304,
            child: ListView(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "تركي الحربي",
                          style: TextStyle(
                              color: Color(0xffDCA310),
                              fontSize: 26,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                       SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                       Image(image: AssetImage("images/person.png")),
                        SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Container(
                        height: 1,
                        width: 500,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profile()));
                      },
                      child: CustomListTile(
                        "بوابة بيشي ",
                        "images/card.png",
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    InkWell(
                        // onTap: () {
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context) => AskBeshi()));
                        // },
                        child: CustomListTile(
                          "أخبار فعليات العروض ",
                          "images/speaker.png",
                    )),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Notification1()));
                        },

                        child:
                            CustomListTile("الإشعارات", "images/ring.png")),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AskBeshi()));
                      },
                      child:
                          CustomListTile("إسأل بيشي ", "images/interface.png"),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Transfer()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "تحويل الرصيد",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: Colors.black, fontSize: 20, fontFamily: "Cairo-Regular"),
                          ),
                          SizedBox(width: 20,),
                        ],
                      )
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: CustomListTile("تسجيل الخروج", "images/signs.png"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  String images;
  String data;

  CustomListTile(this.data, this.images);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            data,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontFamily: "Cairo-Regular"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image(
              image: AssetImage(images),

            ),
          ),
        ],
      ),
    );
  }
}
