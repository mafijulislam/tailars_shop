import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class gridviews extends StatelessWidget {
  const gridviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GrindView"),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [

            Container(
              height: 200,
              width: 200,
              color: Colors.pink,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.pink,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.pink,
            ),

            Container(
              height: 200,
              width: 200,
              color: Colors.pink,
            ),


          ],
        )
      ),
    );
  }
}
