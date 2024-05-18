import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:mini_project10/app/modules/login/views/login_view.dart';

class SplashScreen extends GetView<SplashScreen> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Selamat Datang",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 26,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ClipOval(
                    child: Image.asset(
                      "assets/mylogo.png",
                      width: 280,
                      height: 280,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Tunjukkan gayamu yang unik dengan desain baju kustom\n dari aplikasi kami yang inovatif!",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginView()),
                      );
                    },
                    child: Text(
                      ">",
                      style: TextStyle(fontSize: 23, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellowAccent,
                        minimumSize: Size(40, 60),
                        shape: CircleBorder()),
                  ),
                  Text(
                    "Next",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
