// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test/constants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Padding(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 23),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: const <Widget>[
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: semiBlack,
                      fontFamily: 'Poppins Bold',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text("Login to your account",
                  style: TextStyle(
                    color: Color(0xFFE0E0E0),
                    fontSize: 17,
                    fontFamily: 'Poppins Light',
                  )),
                ],
              ),
            ),
            SizedBox(height: 25),
            TextField(
              controller: null,
              style: const TextStyle(
                fontFamily: 'Poppins Light',
                fontSize: 16,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Email",
                hintText:"Email",
                contentPadding: 
                EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                hintStyle: const TextStyle(
                  fontFamily: 'Poppins Light',
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 18),
            TextField(
              controller: null,
              style: const TextStyle(
                fontFamily: 'Poppins Light',
                fontSize: 16,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Password",
                hintText: "Password",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                hintStyle: const TextStyle(
                  fontFamily: 'Poppins Light',
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 15),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Forgot password?",
                style: TextStyle(
                  color: Color(0xFFE0E0E0),
                  fontSize: 16,
                  fontFamily: 'Poppins Light',
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(254, 255, 166, 0),
                  minimumSize: const Size.fromHeight(55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              child: const Text("Sign In",
                  style: TextStyle(
                    fontFamily: 'Poppins Bold',
                    fontSize: 18,
                  )),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Don't have an account yet?",
                    style: TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: Color.fromARGB(254, 255, 166, 0),
                    )),
                SizedBox(width: 7),
                Text("Sign up",
                    style: TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: Color(0xFFE0E0E0),
                    )),
         ],
            ),
          ],
        ),
      ),
    );
  }
}
