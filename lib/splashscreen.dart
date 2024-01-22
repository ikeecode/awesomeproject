import 'dart:async';
import 'package:awesomeproject/welcomescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}


class _SplashScreen extends State<SplashScreen> {

  void startTimer() {
    const oneSec = Duration(seconds: 3);
    Timer.periodic(
      oneSec,
        (Timer timer) {
          print("Timed: ");
         // Navigator.of(context).pushNamed("/welcome");
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
              return const WelcomeScreen();
            })
          );
          timer.cancel();
        },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build (BuildContext context) {
    return Container (
      color: CupertinoColors.activeGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: CupertinoColors.white.withAlpha(100),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const ClipOval(
              //child: Image.asset("assets/images/logo.jpg"),
              child: Icon(Icons.favorite, color: Colors.white, size: 60,),

            ),


          ),
          Text("EcoLog", style: TextStyle(decoration: TextDecoration.none, fontSize: 24, color: CupertinoColors.white),)

        ],
      ),
    );
  }
}