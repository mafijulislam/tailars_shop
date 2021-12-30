import 'package:flutter/material.dart';

class ListTiles extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview and ListTile"),
      ),

      body: SafeArea(
        child: ListView(
          children: [

            ListTile(
              title: Text("Jomshed Ali college"),
              subtitle: Text("shurpur, kushumhati"),
              tileColor: Colors.teal,
              leading: CircleAvatar(child: Image.asset("images/android.png"),),
              trailing: Icon(Icons.agriculture),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Jomshed Ali college"),
                subtitle: Text("shurpur, kushumhati"),
                tileColor: Colors.teal,
                leading: CircleAvatar(child: Icon(Icons.account_balance),),
                trailing: Icon(Icons.agriculture),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Jomshed Ali college"),
                subtitle: Text("shurpur, kushumhati"),
                tileColor: Colors.teal,
                leading: CircleAvatar(child: Icon(Icons.account_balance),),
                trailing: Icon(Icons.agriculture),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Jomshed Ali college"),
                subtitle: Text("shurpur, kushumhati"),
                tileColor: Colors.teal,
                leading: CircleAvatar(child: Icon(Icons.account_balance),),
                trailing: Icon(Icons.agriculture),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Jomshed Ali college"),
                subtitle: Text("shurpur, kushumhati"),
                tileColor: Colors.teal,
                leading: CircleAvatar(child: Icon(Icons.account_balance),),
                trailing: Icon(Icons.agriculture),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Jomshed Ali college"),
                subtitle: Text("shurpur, kushumhati"),
                tileColor: Colors.teal,
                leading: CircleAvatar(child: Icon(Icons.account_balance),),
                trailing: Icon(Icons.agriculture),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Jomshed Ali college"),
                subtitle: Text("shurpur, kushumhati"),
                tileColor: Colors.teal,
                leading: CircleAvatar(child: Icon(Icons.account_balance),),
                trailing: Icon(Icons.agriculture),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Jomshed Ali college"),
                subtitle: Text("shurpur, kushumhati"),
                tileColor: Colors.teal,
                leading: CircleAvatar(child: Icon(Icons.account_balance),),
                trailing: Icon(Icons.agriculture),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Jomshed Ali college"),
                subtitle: Text("shurpur, kushumhati"),
                tileColor: Colors.teal,
                leading: CircleAvatar(child: Icon(Icons.account_balance),),
                trailing: Icon(Icons.agriculture),
              ),
            ),


            //Text('''Bangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways. Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common. On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger.Bangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways. Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common. On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger.Bangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways. Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common. On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger.Bangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways. Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common. On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger.''',style: TextStyle(fontSize: 24),)
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
        onPressed: (){
          print("Hi i'm floating Action button");
        },
      ),
    );
  }
}
