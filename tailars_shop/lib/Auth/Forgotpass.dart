

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailars_shop/Auth/signIn.dart';

class ForgotPass extends StatefulWidget {

  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {

  TextEditingController usernameController =TextEditingController();
  TextEditingController passController =TextEditingController();
  TextEditingController rePassController =TextEditingController();

  String userName = '';

  @override
  void initState() {
    // TODO: implement initState
    getShapref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SafeArea(

        child: Column(

          children: [


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Type Your userName'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'New Password',
                    hintText: 'Enter your new password'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: rePassController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirmed Password',
                    hintText: 'Enter your Confirmed password'),
              ),
            ),


            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Color(0xFFBF2FF3),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                  onPressed: () {

                    if(userName == usernameController.text){

                      if(passController.text == rePassController.text  ){
                        setSharedPreferance();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => signIn()));
                      }else{
                        Fluttertoast.showToast(
                            msg: 'Please enter a Valid pass',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.SNACKBAR,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.purpleAccent,
                            textColor: Colors.black,
                            fontSize: 16.0);
                      }

                    }else{
                      Fluttertoast.showToast(
                          msg: 'Please enter a Valid user name',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.SNACKBAR,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }



                    /*Fluttertoast.showToast(
                          msg: 'Login successful',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.SNACKBAR,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);*/


                  },
                  child: Text('Submit',
                      style: GoogleFonts.aBeeZee(color: Color(0xFF14B9C1)))),
            ),

          ],
        ),
      ),

    );
  }

  getShapref() async {
    final pref = await SharedPreferences.getInstance();

    setState(() {
      userName = pref.getString('user_name')!;
    });
  }

  setSharedPreferance() async {

    final pref = await SharedPreferences.getInstance();

    pref.setString('pass', passController.text);

  }

}
