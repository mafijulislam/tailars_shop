import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnlineImageLoad extends StatelessWidget {
  const OnlineImageLoad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Online Image load"),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // this is for Online Image
              Image.network("https://bestanimations.com/media/bangladesh/2076299211bangladesh-flag-waving-gif-animation-23.gif"),
              SizedBox(height: 100,),
              Image.network("https://www.cleverfiles.com/howto/wp-content/uploads/2018/03/minion.jpg"),

              //This is for Offline image
              Image.asset("images/android.png")

            ],
          ),
        ),
      ),
    );
  }
}
