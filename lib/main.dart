import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mini_project10/app/modules/login/controllers/login_controller.dart';
import 'package:mini_project10/app/modules/login/views/login_view.dart';

import 'package:mini_project10/app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCJEOlQ6aNng9oPaFF-ywzC4wQLmOa7kH4",
          appId: "1:1029483644449:android:81a0151830a61dfceec560",
          messagingSenderId: "1029483644449",
          projectId: "authentification-89fac",
          storageBucket: "authentification-89fac.appspot.com"));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(LoginController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: authC.StreamAuthStatus,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          print(snapshot);
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Mini Project",
            initialRoute:
                snapshot.data != null && snapshot.data!.emailVerified == true
                    ? Routes.HOME
                    : Routes.LOGIN,
            getPages: AppPages.routes,
            theme: ThemeData(primaryColor: Colors.teal),
          );
        }
        return LoginView();
      },
    );
  }
}
