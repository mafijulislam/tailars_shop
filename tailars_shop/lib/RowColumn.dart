import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Column"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Container(height: 150,color: Colors.black12,),
               Row(
                  children: [

                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.teal),
                        shape: BoxShape.circle,
                        color: Colors.amber
                      ),
                      child: Center(child: Text("1",style: TextStyle(fontSize: 32),)),
                      //color: Colors.pink,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2,color: Colors.teal),
                          shape: BoxShape.circle,
                          color: Colors.amber
                      ),child: Center(child: Text("2",style: TextStyle(fontSize: 32),)),

                      //color: Colors.pink,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2,color: Colors.teal),
                          shape: BoxShape.circle,
                          color: Colors.amber
                      ),
                      child: Center(child: Text("3",style: TextStyle(fontSize: 32),)),

                      //color: Colors.pink,
                    ),

                  ],
                ),
              Row(
                children: [

                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.teal),
                        shape: BoxShape.circle,
                        color: Colors.amber
                    ),
                    child: Center(child: Text("1",style: TextStyle(fontSize: 32),)),
                    //color: Colors.pink,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.teal),
                        shape: BoxShape.circle,
                        color: Colors.amber
                    ),child: Center(child: Text("2",style: TextStyle(fontSize: 32),)),

                    //color: Colors.pink,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.teal),
                        shape: BoxShape.circle,
                        color: Colors.amber
                    ),
                    child: Center(child: Text("3",style: TextStyle(fontSize: 32),)),

                    //color: Colors.pink,
                  ),

                ],
              ),
              Row(
                children: [

                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.teal),
                        shape: BoxShape.circle,
                        color: Colors.amber
                    ),
                    child: Center(child: Text("1",style: TextStyle(fontSize: 32),)),
                    //color: Colors.pink,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.teal),
                        shape: BoxShape.circle,
                        color: Colors.amber
                    ),child: Center(child: Text("2",style: TextStyle(fontSize: 32),)),

                    //color: Colors.pink,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.teal),
                        shape: BoxShape.circle,
                        color: Colors.amber
                    ),
                    child: Center(child: Text("3",style: TextStyle(fontSize: 32),)),

                    //color: Colors.pink,
                  ),

                ],
              ),
              Row(
                children: [

                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.teal),
                        shape: BoxShape.circle,
                        color: Colors.amber
                    ),
                    child: Center(child: Text("1",style: TextStyle(fontSize: 32),)),
                    //color: Colors.pink,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.teal),
                        shape: BoxShape.circle,
                        color: Colors.amber
                    ),child: Center(child: Text("2",style: TextStyle(fontSize: 32),)),

                    //color: Colors.pink,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.teal),
                        shape: BoxShape.circle,
                        color: Colors.amber
                    ),
                    child: Center(child: Text("3",style: TextStyle(fontSize: 32),)),

                    //color: Colors.pink,
                  ),

                ],
              ),
              Row(
                children: [

                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.teal),
                        shape: BoxShape.circle,
                        color: Colors.amber
                    ),
                    child: Center(child: Text("1",style: TextStyle(fontSize: 32),)),
                    //color: Colors.pink,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.teal),
                        shape: BoxShape.circle,
                        color: Colors.amber
                    ),child: Center(child: Text("2",style: TextStyle(fontSize: 32),)),

                    //color: Colors.pink,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.teal),
                        shape: BoxShape.circle,
                        color: Colors.amber
                    ),
                    child: Center(child: Text("3",style: TextStyle(fontSize: 32),)),

                    //color: Colors.pink,
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
