import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class Searchbar extends StatefulWidget {

  @override
  _SearchbarState createState() => _SearchbarState();
}





class _SearchbarState extends State<Searchbar> {
  List row=[];
  List result=[];
  String query='';
  TextEditingController searchbar= TextEditingController();
  @override
  void initState() {
    datafetch();
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            child: TextField(
              controller: searchbar,
              decoration: InputDecoration(
                  fillColor: Colors.green,
                  filled: true,
                  hintText: 'Search'
              ),
              onChanged: (v){
                setState(() {
                  query=v;
                  setresult(query);
                });
              },
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                  child: query.isEmpty?
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: row.length,
                      itemBuilder: (context,i){
                        return Card(
                          child: ListTile(
                            title: Text(row[i]['title']),
                            onTap: (){
                              setState(() {
                                searchbar.text=row[i]['title'];
                                query=row[i]['title'];
                                setresult(query);
                              });
                            },
                          ),
                        );

                      }

                  ):
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: result.length,
                      itemBuilder: (context,i){
                        return Card(
                          child: ListTile(
                            title: Text(result[i]['title']),
                            onTap: (){
                              setState(() {
                                searchbar.text=result[i]['title'];
                                query=result[i]['title'];
                                setresult(query);
                              });
                            },
                          ),
                        );

                      }

                  )
              )

            ],
          ),
        ],
      ),

    );
  }

  void setresult(String query) {
    result=row.where((element) =>
    element['title'].toString().toLowerCase().contains(query.toLowerCase()) ||
        element['title'].toString().toLowerCase().contains(query.toLowerCase())).toList();
  }
  datafetch() async{
    try{
      final data =  await http.get(Uri.parse("https://raw.githubusercontent.com/ShopnilSohan/JSON/main/nu.json"));
      final a = jsonDecode(data.body) as List;
      setState(() {
        row = a;
      });
    }catch(e){
      Fluttertoast.showToast(msg: 'error');
    }

  }
}