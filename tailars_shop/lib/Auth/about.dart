import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('About Us'),

      ),
      backgroundColor: Color(0xffbd2df1),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [



              Text('Developer_Name: Md. Mafijul Islam',style: TextStyle(color: Colors.black,fontSize: 25,height: 3)),
              Text('Mobile NO: +8801767-401072',style: TextStyle(color: Colors.black,fontSize: 20,height: 3)),
              Text('Address: Sherpur, Mymenshing, Dhaka, Bangladesh',style: TextStyle(color: Colors.black,fontSize: 20))
            ],
          ),
        ),
      ),
    );
  }
}
