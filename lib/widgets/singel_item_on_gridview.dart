import 'package:flutter/material.dart';

class SingleItemOnGridview extends StatelessWidget {
  final String id;
  final String albumId;
  final String thumbnailUrl;

  SingleItemOnGridview({
    @required this.id,
    @required this.albumId,
    @required this.thumbnailUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(5),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              child: Image.network(thumbnailUrl),
              height: 50,
              width: 50,
            ),
            Container(
              child: Text(albumId),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                      child: Text(id),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 10),
                      child: Icon(Icons.shopping_cart),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
