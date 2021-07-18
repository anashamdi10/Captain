import 'package:flutter/material.dart';

import '../../login.dart';

class ForgetPassword3 extends StatefulWidget {
  const ForgetPassword3({Key? key}) : super(key: key);

  @override
  _ForgetPassword3State createState() => _ForgetPassword3State();
}

class _ForgetPassword3State extends State<ForgetPassword3> {
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
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Container(
                  width: 304,
                  height: 45,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffDCA310), width: 1),
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(50)),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Cairo-Regular"),
                    decoration:
                        InputDecoration(hintText: "ادخل كلمة المرور الجديدة"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Container(
                    width: 304,
                    height: 45,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffDCA310), width: 1),
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(50)),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontFamily: "Cairo-Regular"),
                      decoration: InputDecoration(hintText: "كرر كلمة المرور"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 26),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login()));
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
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
