import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'signIn.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  DateTime? _dateTime;
  int _valueradio = 0;
  int radiovalue = 0;

  String? user_name;

  getDate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year - 20),
        lastDate: DateTime(DateTime.now().year + 2));
    setState(() {
      _dateTime = date;
    });
  }

  TextEditingController userController  = TextEditingController();
  TextEditingController emailController  = TextEditingController();
  TextEditingController MobileController  = TextEditingController();
  TextEditingController passController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [




              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: emailController,
                  //obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'E-mail',
                      hintText: 'Enter your E-mail'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: userController,
                  //obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'user name',
                      hintText: 'Enter your user name'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: MobileController,
                  //obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mobile',
                      hintText: 'Enter your Mobile'),
                ),
              ),
//testt
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: passController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your password'),
                ),
              ),

              Container(
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xFF8A8383))),
                margin: EdgeInsets.only(left: 12, right: 12),
                padding: EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: _dateTime == null
                            ? Flexible(child: Text('Date : DD-MM-YYYY'))
                            : Text(
                                'Date : ${_dateTime!.day}-${_dateTime!.month}-${_dateTime!.year}')),
                    IconButton(
                        onPressed: () {
                          getDate();
                        },
                        icon: Icon(
                          Icons.date_range_outlined,
                          color: Color(0xFF06D231),
                        ))
                  ],
                ),
              ),


              TextButton(
                  onPressed: () {
                    getgender();
                  },
                  child: Text('Gender')),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: radiovalue,
                          activeColor: Color(0xFFB30DEF),
                          onChanged: (value) {
                            setState(() {
                              radiovalue = value as int;
                            });
                          }),
                      Text('Male')
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: radiovalue,
                          onChanged: (value) {
                            setState(() {
                              radiovalue = value as int;
                            });
                          }),
                      Text('FeMale')
                    ],
                  ),



                ],
              ),

              ElevatedButton(onPressed: (){

                if(userController.text.isEmpty || passController.text.isEmpty || radiovalue == 0){
                                  
                  Fluttertoast.showToast(msg: 'Enter user name and pass', toastLength: Toast.LENGTH_LONG);

                }else{
                  Fluttertoast.showToast(msg: 'Submitted successfully', toastLength: Toast.LENGTH_LONG);

                  setSharedPreferance();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> signIn()));

                }

                }, child: Card(child: Text('Submit')))
            ],
          ),
        ),
      ),
    );
  }

  getgender() {
    if (_valueradio == 1) {
      Fluttertoast.showToast(msg: 'Male', toastLength: Toast.LENGTH_LONG);
    } else {
      Fluttertoast.showToast(msg: 'FeMale', toastLength: Toast.LENGTH_LONG);
    }
    Fluttertoast.showToast(
        msg: _valueradio.toString(), toastLength: Toast.LENGTH_LONG);
  }

  setSharedPreferance() async {

    final pref = await SharedPreferences.getInstance();

    pref.setString('user_name', userController.text);
    pref.setString('mobile', MobileController.text);
    pref.setString('email', emailController.text);
    pref.setString('pass', passController.text);

  }



}
