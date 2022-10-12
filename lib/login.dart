import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test/onboarding_page.dart';
import 'package:test/home_page.dart';
import 'package:test/shared_pref.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    

    // object_controller
    TextEditingController emailController = TextEditingController();
    TextEditingController pwdController = TextEditingController();

    // data login dummy
    var emaildummy = "a";
    var pwddummy = "a";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => OnboardingPage()),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        )
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Welcome back",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Log in to your account",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  SizedBox(
                    height: 24,
                  ),

                  Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: 
                                  BorderRadius.all(Radius.circular(12.0)))),
                  ),

                  SizedBox(
                    height: 16,
                  ),

                  Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: pwdController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: 
                                BorderRadius.all(Radius.circular(12.0)))),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                      color: Colors.orange,
                      textColor: Colors.white,
                      child: Text("Login"),
                      onPressed: () {
                          // if (emailController.text == emaildummy) {
                          //   if (pwdController.text == pwddummy) {
                          //         Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                          //   } else {
                          //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          //       backgroundColor: Colors.red,
                          //       content: Text("Password salah"),
                          //     ));
                          //   }
                          // } else {
                          //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          //     content: Text("Email salah"),
                          //     backgroundColor: Colors.red,
                          //   ));
                          //}

                      }),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an acocunt yet? "),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.orange),
                        ))
                    ],
                  )
                ],
              )),
              SizedBox(
                height: 24,
              )
          ],
        ),
      ),
    );
  }
}