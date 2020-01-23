import 'package:flutter/material.dart';

class ShopCategory extends StatefulWidget {
  @override
  ShopCategoryState createState() => ShopCategoryState();
}

class ShopCategoryState extends State<ShopCategory> {
  final title = 'category name';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
        leading: Icon(Icons.restaurant_menu),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
practic                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) =>
                      Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: FloatingActionButton(
                        child: Center(
                          child: Text('buttonalise'),
                        ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ), onPressed: null)),
                ))
          ],
        ),
      ),
    );
  }
}
