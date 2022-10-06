// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test/login_page.dart';
import 'package:test/login.dart';


class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/logo.png',
                fit: BoxFit.cover,
              ),
              Padding(padding: EdgeInsets.only(top: 10, bottom: 5)),
              Image.asset(
                'assets/ramen.png',
                fit: BoxFit.cover,
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              const Text(
                'All your\nfavourite ramen',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              const Text(
                'Delicious as is or tossed with your\nfavorite ingredients',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(254, 255, 166, 0),
                    minimumSize: const Size.fromHeight(35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: const Text("Sign In",
                    style: TextStyle(
                        fontFamily: 'Poppins Bold',
                        fontSize: 16,
                        color: Color.fromARGB(255, 252, 252, 252))),
              ),
              ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    minimumSize: const Size.fromHeight(35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: const Text("Sign Up",
                    style: TextStyle(
                        fontFamily: 'Poppins Bold',
                        fontSize: 16,
                        color: Colors.black)),
              ),
            ]),
      ),
    );
  }
}
