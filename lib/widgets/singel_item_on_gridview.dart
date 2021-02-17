import 'package:flutter/material.dart';

class SingleItemOnGridview extends StatefulWidget {
  @override
  _SingleItemOnGridviewState createState() => _SingleItemOnGridviewState();
}

class _SingleItemOnGridviewState extends State<SingleItemOnGridview> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(
              "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg"),
          Container(
            child: Text("all pricing"),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    child: Text("this is price"),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(20),
                    child: Icon(Icons.shopping_cart),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
