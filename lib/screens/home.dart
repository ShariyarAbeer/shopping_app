import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var data;
  List datalist = [];

  Future getdata() async {
    var response =
        await http.get("https://jsonplaceholder.typicode.com/photos");
    setState(() {
      var decode = jsonDecode(response.body);
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

  final List<Map> myProducts =
      List.generate(100, (index) => {"id": index, "name": "Product $index"})
          .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping App"),
      ),
      // body: ListView.builder(
      //   itemCount: data == null ? 0 : data.length,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       title: Text(data[index]["id"].toString()),
      //       subtitle: Text(data[index]["title"]),
      //     );
      //   },
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              alignment: Alignment.center,
              child: Text(data[index]["title"]),
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(15),
              ),
            );
          },
        ),
      ),
    );
  }
}
