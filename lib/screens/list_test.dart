import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListTest extends StatefulWidget {
  @override
  _ListTestState createState() => _ListTestState();
}

class _ListTestState extends State<ListTest> {
  var data;
  List datalist = [];

  Future getdata() async {
    var response =
        await http.get("https://jsonplaceholder.typicode.com/photos");
    setState(() {
      var decode = json.decode(response.body);
      data = decode;
      datalist = data;
      print(datalist);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is teast data"),
      ),
      // body: Text("Data"),
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(data[index]["id"].toString()),
            subtitle: Text(data[index]["title"]),
          );
        },
      ),
    );
  }
}
