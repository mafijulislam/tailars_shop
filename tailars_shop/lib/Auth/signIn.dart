
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailars_shop/Auth/signup.dart';


import '../main.dart';

import 'Forgotpass.dart';
import 'profile.dart';

class signIn extends StatefulWidget {
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  String userName = '';
  String pass = '';

  @override
  void initState() {
    // TODO: implement initState
    getShapref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
    title: Text('Dashboard'),),
      backgroundColor: Color(0xffa734ef),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  child: Image.network('https://cdn.pixabay.com/photo/2019/08/30/15/48/lock-4441691_1280.png')
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: userNameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintText: 'Enter your user name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your password'),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ForgotPass()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        'Forgot password',
                        style: GoogleFonts.aBeeZee(color: Color(0xFF14B9C1)),
                      ),
                    )),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => profile()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        'profile',
                        style: GoogleFonts.aBeeZee(color: Color(0xFF14B9C1)),
                      ),
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Color(0xFFEED13E),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                    onPressed: () {
                      if (userNameController.text.isEmpty &&
                          passwordController.text.isEmpty) {
                        Fluttertoast.showToast(
                            msg: 'Please give your ID and pass',
                            toastLength: Toast.LENGTH_LONG,
                            backgroundColor: Colors.deepOrange);
                      } else if (userName == userNameController.text &&
                          pass == passwordController.text) {
                        Fluttertoast.showToast(
                            msg: 'Login Successful',
                            toastLength: Toast.LENGTH_LONG,
                            backgroundColor: Colors.deepOrange);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHome()));
                      } else {
                        Fluttertoast.showToast(
                            msg: 'Please try with valid password',
                            toastLength: Toast.LENGTH_LONG,
                            backgroundColor: Colors.deepOrange);
                      }
                    },
                    child: Text('Sign In',
                        style: GoogleFonts.aBeeZee(color: Color(0xFF14B9C1)))),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Color(0xFFEED13E),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                    onPressed: () {

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => signup()));
                    },
                    child: Text('Registration',
                        style: GoogleFonts.aBeeZee(color: Color(0xFF14B9C1)))),
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }

  getShapref() async {
    final pref = await SharedPreferences.getInstance();

    setState(() {
      userName = pref.getString('user_name')!;
      pass = pref.getString('pass')!;
    });
  }
}
