import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class AwesomeCurvedBar extends StatefulWidget {
  const AwesomeCurvedBar({super.key});

  @override
  State<AwesomeCurvedBar> createState() => _AwesomeCurvedBarState();
}

class _AwesomeCurvedBarState extends State<AwesomeCurvedBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.deepPurple.shade200,
        buttonBackgroundColor: Colors.deepPurple.shade100,
        backgroundColor: Colors.deepPurple,
        animationDuration: Duration(milliseconds: 200),
        items: [Icon(Icons.home), Icon(Icons.favorite), Icon(Icons.settings)],
      ),
    );
  }
}
