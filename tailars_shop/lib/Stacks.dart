import 'package:flutter/material.dart';

class Stacks extends StatelessWidget {
  const Stacks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.topCenter,
              overflow: Overflow.visible,
              children: [

                Container(
                  height: 200,
                  //width: 300,
                  color: Colors.teal,
                ),

                Positioned(
                    //bottom: -50,
                  top: 50,
                    child: CircleAvatar(radius: 50,backgroundColor: Colors.pink,)
                ),

                /*Positioned(
                  bottom: -20,
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.pink,
                    ))*/

              ],
            ),
          ),
        ),
      ),
    );
  }
}
