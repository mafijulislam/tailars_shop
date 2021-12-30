import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Containers extends StatelessWidget {
  const Containers({Key? key, child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  //border: Border.all(width: 2 , color: Colors.purple)
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.pinkAccent
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Align(
                        alignment: Alignment.center,
                        child: Text("A"))

                  ],
                ),
                //color: Colors.pinkAccent,
              ),
            ),

            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    //border: Border.all(width: 2 , color: Colors.purple)
                  shape: BoxShape.circle,
                  color: Colors.purple
                ),
                //color: Colors.pinkAccent,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
