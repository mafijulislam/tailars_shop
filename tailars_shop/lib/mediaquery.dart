import 'package:flutter/material.dart';

class mediaQuerys extends StatelessWidget {
  const mediaQuerys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;

    return Scaffold(

      appBar: AppBar(
        title: Text("Media Query"),
      ),
      body: SafeArea(
        child: Column(
          children: [

            Container(
              height: h/4,
              width: MediaQuery.of(context).size.width/4,
              color: Colors.pinkAccent,
            )

          ],
        ),
      ),
    );
  }
}
