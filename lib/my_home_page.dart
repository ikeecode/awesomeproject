import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {

          },
          child: Icon(Icons.menu),
          
        ),
        title: const Text("Template",
          style:  TextStyle(
              color: Colors.white,
          ),
        ),

      ),
      bottomNavigationBar:
      Container(
        color: Colors.black,

        child: Padding(

          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              gap: 8,
              onTabChange: (index) {
                print(index);
              },
              padding: EdgeInsets.all(16),
              tabs: const [
                GButton(icon: Icons.home, text: "Home",),
                GButton(icon: Icons.search, text: "Search",),
                GButton(icon: Icons.favorite, text: "Likes",),
                GButton(icon: Icons.settings, text: "Settings",),
              ],
            ),
        ),
      ),
    );
  }
}
