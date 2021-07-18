import 'package:captian/model/models.dart';
import 'package:flutter/material.dart';

import '../HomeScreen.dart';

class RefuseOrder extends StatefulWidget {
  const RefuseOrder({Key? key}) : super(key: key);

  @override
  _RefuseOrderState createState() => _RefuseOrderState();
}

class _RefuseOrderState extends State<RefuseOrder> {
  int bulbColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Text(
            "سبب الإلغاء",
            style: TextStyle(color: Color(0xff282F39), fontFamily: "Cairo-Regular"),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              icon: Icon(
                Icons.close,
                color: Colors.black,
              )),
        ),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 9),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                        Radio(
                            value: 1,
                            groupValue: bulbColor,
                            onChanged: (val) {
                              bulbColor = 1;
                              setState(() {});
                            }),
                        SizedBox(width: MediaQuery.of(context).size.width*0.45,),

                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          child: Text(
                            'العميل لا يرد الطلب',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(fontSize: 16, fontFamily: "Cairo-Regular"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:9),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                        Radio(
                            value: 2,
                            groupValue: bulbColor,
                            onChanged: (val) {
                              bulbColor = 2;
                              setState(() {});
                            }),
                        SizedBox(width: MediaQuery.of(context).size.width*0.45,),
                        Container(
                            width: MediaQuery.of(context).size.width*0.3,
                            child: Text('تعطل مفاجئ للسيارة',  textDirection: TextDirection.rtl,style: TextStyle(fontSize: 16, fontFamily: "Cairo-Regular")))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 9),
                  child: Container(
                    child: Row(

                      children: <Widget>[
                        SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                        Radio(
                            value: 3,
                            groupValue: bulbColor,
                            onChanged: (val) {
                              bulbColor = 3;
                              setState(() {});
                            }),
                        SizedBox(width: MediaQuery.of(context).size.width*0.45,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          child: Text('نقطة الوصول بعيدة جداً',
                              textDirection: TextDirection.rtl,
                              maxLines: 1,
                              style: TextStyle(fontSize: 16,fontFamily: "Cairo-Regular")),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 9),
                  child: Container(
                    child: Row(

                      children: <Widget>[
                        SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                        Radio(
                            value: 4,
                            groupValue: bulbColor,
                            onChanged: (val) {
                              bulbColor = 4;
                              setState(() {});
                            }),
                        SizedBox(width: MediaQuery.of(context).size.width*0.45,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          child: Text('إزدحام مروري عالي جداًً',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(fontSize: 16,fontFamily: "Cairo-Regular")),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 9),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                        Radio(
                            value: 5,
                            groupValue: bulbColor,
                            onChanged: (val) {
                              bulbColor = 5;
                              setState(() {});
                            }),
                        SizedBox(width: MediaQuery.of(context).size.width*0.45,),
                        Container(
                            width: MediaQuery.of(context).size.width*0.3,
                            child: Text('أسباب أخرى',maxLines: 1, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 16, fontFamily: "Cairo-Regular")))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.height*0.75,
              left: MediaQuery.of(context).size.width*0.1,
              child: InkWell(
                onTap: (){
                  messageRefuse = true;
                  list = true ;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  height: 40,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Color(0xffDCA310),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color:Color(0xffDCA310))
                  ),
                  child: Center(
                    child: Text(
                      "تم",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],


        ));
  }
}
