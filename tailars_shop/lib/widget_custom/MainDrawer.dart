
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailars_shop/Auth/about.dart';
import 'package:tailars_shop/ecommerce/ListProduct.dart';




class MainDrawer extends StatefulWidget {

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {

  String name = '';
  String email = '';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Column(
                children: [

                  Icon(Icons.account_box,size: 50,),
                  Text(name),
                  Text(email),

                ],
              )),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: (){
              Fluttertoast.showToast(msg: 'Home',toastLength: Toast.LENGTH_LONG);
            },
          ),
          ListTile(
            title: Text('profile'),
            leading: Icon(Icons.home),
            onTap: (){
              Fluttertoast.showToast(msg: 'profile',toastLength: Toast.LENGTH_LONG);
            },
          ),
          ListTile(
            title: Text('Product List'),
            leading: Icon(Icons.home),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ListProduct()));
              Fluttertoast.showToast(msg: 'List Product',toastLength: Toast.LENGTH_LONG);
            },

          ),
          ListTile(
            title: Text('About Us'),
            leading: Icon(Icons.home),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> About()));
              Fluttertoast.showToast(msg: 'List Product',toastLength: Toast.LENGTH_LONG);
            },

          )
        ],
      ),
    );
  }

  getShapref() async {
    final pref = await SharedPreferences.getInstance();

    setState(() {
      name = pref.getString('user_name')!;
      email = pref.getString('email')!;
    });
  }
}
