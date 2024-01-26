import 'package:awesomeproject/httpexemple.dart';
import 'package:flutter/material.dart';

class ScrollEffect1 extends StatelessWidget {
  const ScrollEffect1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: ListWheelScrollView(
          itemExtent: 50,
          //diameterRatio: 1.5,
          offAxisFraction: -0.5,
          children: [
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const HttpExemple();
                  }));
                },
                child: Text("go ->"),
              ),
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.teal,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.redAccent,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.black54,
            ),
            Container(
              color: Colors.black54,
            ),
            Container(
              color: Colors.cyan,
            ),
            Container(
              color: Colors.lime,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
