import 'dart:convert';



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class JsonGetdata extends StatefulWidget {

  @override
  _JsonGetdataState createState() => _JsonGetdataState();
}

class _JsonGetdataState extends State<JsonGetdata> {


  final url = "https://jsonplaceholder.typicode.com/posts";
  var _postjson = [];

  @override
  void initState() {
    // TODO: implement initState
    fatchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _postjson.length,
        itemBuilder: (context, index) {
          final load = _postjson[index];
          return Card(
            child: ListTile(
              title: Text('title : ${load['tile']}'),
            ),
          );
        },
      ),
    );
  }

  void fatchData() async {
    try {
      final response = await http.get(Uri.parse(url));

      final jsonDecodes = jsonDecode(response.body) as List;

      setState(() {
        _postjson = jsonDecodes;
      });
    } catch (a) {
      Fluttertoast.showToast(msg: "Please Help");
    }
  }
}
