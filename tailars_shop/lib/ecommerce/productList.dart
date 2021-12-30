import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Product List'),
      ),
      backgroundColor: Colors.purpleAccent,
      body: ListView.builder(
        itemCount: 20,
          itemBuilder: (context, i){
            return Card(
              child: ListTile(
                title: Text('List Item $i'),
                leading: Icon(Icons.account_balance_sharp),
                trailing:  Icon(Icons.login),
              ),
            );
          }),
    );
  }
}
