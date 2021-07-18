import 'package:flutter/material.dart';


class AskBeshi extends StatelessWidget {
  const AskBeshi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDCA310),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
            Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                   height: 86,
                   width: 99,
                   child: Image.asset("images/splash_logo.png")),

             ],
           ),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "أكتب رسالتك للمدير",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Cairo-Regular"
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.05,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height: 200,
                  child: TextField(
                    style: TextStyle( fontFamily: "Cairo-Regular"),
                    textAlign: TextAlign.right,
                    maxLines: 10,


                  )),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.3,),
            InkWell(
                child: Container(
                  height: 57,
                  width: 194,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white
                  ),
                  child: Center(
                    child: Text(
                      "إرسال",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffDCA310),
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),

    );
  }
}
