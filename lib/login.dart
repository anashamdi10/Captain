// @dart=2.9
import 'package:captian/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screens/forget_passord/forgetpassword1.dart';





class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  final bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bb.png"), fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(

              children: [
                // logo
                SizedBox(height: MediaQuery.of(context).size.height*0.10,),
                Image(image: AssetImage("images/splash_logo.png")),
                //details
                SizedBox(height: MediaQuery.of(context).size.height*0.20,),
                Container(
                  child: Column(
                    children: [
                      // user login
                      Text(
                        "ادخل المعّرف الكابتن الخاص بك ",
                        style: TextStyle(fontSize: 18 , color:Colors.white,fontFamily:"Cairo-Regular" ),
                      ),
                      // field user
                      Container(
                        width: 304,
                        height: 45,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffDCA310), width: 1),
                            color: Colors.white12.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 11, bottom: 11, left: 24, right: 27),
                              child: Container(
                                height: 23,
                                width: 35,
                                child: Image(image: AssetImage("images/sudi.png")),
                              ),
                            ),
                            Container(
                                width: 200,
                                child: TextField(keyboardType: TextInputType.phone,style: TextStyle(fontFamily:"Roboto-Black"),))
                          ],
                        ),
                      ),
                      //txt  password
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "ادخل الكلمة المرور",
                          style: TextStyle(fontSize: 17, color: Colors.white,fontFamily:"Cairo-Regular"),
                        ),
                      ),
                      // field pass
                      Container(
                        width: 304,
                        height: 45,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffDCA310), width: 1),
                            color: Colors.white12.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(50)),
                        child: TextField(
                          textAlign: TextAlign.center,
                          obscureText: true,
                          style: TextStyle(color: Colors.white,fontFamily:"Cairo-Regular"),
                        ),
                      ),
                      // txt forget pass
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgetPassword1()));
                            },
                            child: Text(
                              "نسيت كلمة المرور",
                              style: TextStyle(fontSize: 14, color: Colors.white,fontFamily:"Cairo-Regular"),
                            )),
                      ),
                      // button login
                      InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
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
                              "دخول",
                              style: TextStyle(color: Colors.white, fontSize: 17,fontFamily:"Cairo-Regular"),
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
