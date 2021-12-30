import 'package:flutter/material.dart';

import 'Cards.dart';
import 'Containers.dart';
import 'Expandeds.dart';
import 'Flexibles.dart';
import 'Grideview.dart';
import 'RowColumn.dart';
import 'Stacks.dart';
import 'imageLoad.dart';
import 'listTiles.dart';
import 'mediaquery.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                child: CircleAvatar(
                  radius: 50,
                )),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text("Home"),
              onTap: () {
                print("i am home");
              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text("Home"),
            ),
            ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("card page"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => cards()));
                })
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Batch -01"),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(" cbvdhcbdjcdk"),
              Text(" cbvdhcbdjcdk"),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Containers()));
                  },
                  child: Text("Container")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OnlineImageLoad()));
                  },
                  child: Text("Online Image Load")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RowColumn()));
                  },
                  child: Text("Row Column")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Stacks()));
                  },
                  child: Text("Stack")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListTiles()));
                  },
                  child: Text("ListView And Listtile")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => cards()));
                  },
                  child: Text("Card")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => gridviews()));
                  },
                  child: Text("GridView")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Expandeds()));
                  },
                  child: Text("Expandeds")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => flexibles()));
                  },
                  child: Text("Flexible")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mediaQuerys()));
                  },
                  child: Text("Media Query"))
            ],
          ),
        ),
      ),
    );
  }
}
