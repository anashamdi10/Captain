import 'package:flutter/material.dart';
import 'forgetpassword3.dart';

class ForgetPassword2 extends StatefulWidget {
  const ForgetPassword2({Key? key}) : super(key: key);

  @override
  _ForgetPassword2State createState() => _ForgetPassword2State();
}

class _ForgetPassword2State extends State<ForgetPassword2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bb.png"), fit: BoxFit.fill)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.23,
            ),
            Image(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.4,
              image: AssetImage("images/logo2.png"),
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "ادخل الكود ",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontFamily: "Cairo-Regular"),
                  ),
                ),
                Container(
                  width: 304,
                  height: 45,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffDCA310), width: 1),
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(50)),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontFamily: "Cairo-Regular"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 26),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassword3()));
                    },
                    child: Container(
                      width: 141.42,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffDCA310),
                        borderRadius: BorderRadius.circular(17),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: Text(
                          "إستعادة",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Cairo-Regular"),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
