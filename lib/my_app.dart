import 'package:awesomeproject/awesome_curved_bar.dart';
import 'package:awesomeproject/splashscreen.dart';
import 'package:awesomeproject/welcomescreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:awesomeproject/my_home_page.dart';
import 'package:awesomeproject/screen2.dart';
import 'package:awesomeproject/screen1.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/splash",
      routes: <String, WidgetBuilder> {

        "/splash": (context) => SplashScreen(),
        "/welcome": (context) => WelcomeScreen(),
        "/login" : (context) => Screen1(),
        "register" : (context) => Screen2(),

      },

    );
  }
}
