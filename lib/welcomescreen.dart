import 'dart:async';
import 'package:awesomeproject/screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build (BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container (
          color: CupertinoColors.white,
          /*decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.white,
                  Colors.green,
                ],
              )
          ),*/

          height: MediaQuery.of(context).size.height,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.green.withAlpha(100),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const ClipOval(
                  //child: Image.asset("assets/images/logo.jpg"),
                  child: Icon(Icons.favorite, color: Colors.black54, size: 60,),
                ),
              ),
        
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 3 / 5,
                decoration: BoxDecoration(
                  color: Colors.green.withAlpha(50),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(MediaQuery.of(context).size.width / 2 ),
                    bottomLeft: Radius.circular(MediaQuery.of(context).size.width / 2 ),
                  )
                ),
                child: Container(
                  child: Icon(Icons.person, size: 200,)
                ),
              ),
              SizedBox(height: 20,),

              Text("Gekko is the new Geek ",
                  style: TextStyle(decoration: TextDecoration.none, fontSize: 22,color: Colors.black),),
        
              Text("I know you want to know what is happening under the wood I know you want to know what is happening under the wood",
                style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: Colors.black),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 20,),

              FloatingActionButton(onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const Screen2();
                  })
                );
              }, child: Icon(Icons.arrow_forward_outlined, size: 24, color: CupertinoColors.white,), elevation: 0.5, backgroundColor: Colors.green,),

            ],
          ),
        ),
      ),
    );
  }
}