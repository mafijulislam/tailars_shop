import 'package:flutter/material.dart';

class Expandeds extends StatelessWidget {
  const Expandeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expandeds"),
      ),

      body: SafeArea(
        child: Column(
          children: [

            Expanded(
              flex: 1,
              child: Container(
                color: Colors.purple,
              ),
            ),

            Expanded(
              flex: 5,
              child: Container(
                color: Colors.pinkAccent,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.purple,
              ),
            )

          ],
        ),
      ),
    );
  }
}
