import 'package:flutter/material.dart';

class cards extends StatelessWidget {
  const cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                    ),
                    elevation: 20,
                    child: Container(
                      width: 180,
                      height: 200,
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            child: Image.asset("images/android.png"),
                          ),
                          Container(
                            child: Text("Product 1"),
                          )

                        ],
                      ),
                      //color: Colors.pink,
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                    ),
                    elevation: 20,
                    child: Container(
                      width: 180,
                      height: 200,
                      child: Column(
                        children: [

                          Container(
                            height: 150,
                            child: Image.asset("images/android.png"),
                          ),

                          Container(
                            child: Text("Product 1"),
                          )

                        ],
                      ),
                      //color: Colors.pink,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                    ),
                    elevation: 20,
                    child: Container(
                      width: 180,
                      height: 200,
                      child: Column(
                        children: [

                          Container(
                            height: 150,
                            child: Image.asset("images/android.png"),
                          ),

                          Container(
                            child: Text("Product 1"),
                          )

                        ],
                      ),
                      //color: Colors.pink,
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                    ),
                    elevation: 20,
                    child: Container(
                      width: 180,
                      height: 200,
                      child: Column(
                        children: [

                          Container(
                            height: 150,
                            child: Image.asset("images/android.png"),
                          ),

                          Container(
                            child: Text("Product 1"),
                          )

                        ],
                      ),
                      //color: Colors.pink,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                    ),
                    elevation: 20,
                    child: Container(
                      width: 180,
                      height: 200,
                      child: Column(
                        children: [

                          Container(
                            height: 150,
                            child: Image.asset("images/android.png"),
                          ),

                          Container(
                            child: Text("Product 1"),
                          )

                        ],
                      ),
                      //color: Colors.pink,
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                    ),
                    elevation: 20,
                    child: Container(
                      width: 180,
                      height: 200,
                      child: Column(
                        children: [

                          Container(
                            height: 150,
                            child: Image.asset("images/android.png"),
                          ),

                          Container(
                            child: Text("Product 1"),
                          )

                        ],
                      ),
                      //color: Colors.pink,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                    ),
                    elevation: 20,
                    child: Container(
                      width: 180,
                      height: 200,
                      child: Column(
                        children: [

                          Container(
                            height: 150,
                            child: Image.asset("images/android.png"),
                          ),

                          Container(
                            child: Text("Product 1"),
                          )

                        ],
                      ),
                      //color: Colors.pink,
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                    ),
                    elevation: 20,
                    child: Container(
                      width: 180,
                      height: 200,
                      child: Column(
                        children: [

                          Container(
                            height: 150,
                            child: Image.asset("images/android.png"),
                          ),

                          Container(
                            child: Text("Product 1"),
                          )

                        ],
                      ),
                      //color: Colors.pink,
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
