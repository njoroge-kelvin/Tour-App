import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopCategory extends StatefulWidget {
  @override
  ShopCategoryState createState() => ShopCategoryState();
}

class ShopCategoryState extends State<ShopCategory> {
  final title = 'category name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.shutter_speed,
              color: Colors.green,
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                tooltip: 'search',
                color: Colors.green,
                onPressed: () {},
              )
            ]),
        body: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) => Container(
                          margin: EdgeInsets.only(left: 10.0),
                          padding: EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 3.5, bottom: 3.5),
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: Center(
                            child: Text('Information'),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey,
                          ),
                        )),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        itemBuilder: (BuildContext context, int index) => Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            padding: EdgeInsets.only(right: 100.0),
                            margin: EdgeInsets.only(right: 10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: new DecorationImage(
                                image: new AssetImage('assets/Screenshot from 2019-12-21 00-58-31.png'),
                                    fit: BoxFit.fitWidth,
                              )
                            ),
//                            child: new Positioned(
//                              left: 0.0,
//                              bottom: 0.0,
//                              child: Text('Scenaries',
//                              style: TextStyle(
//                                fontSize: 10.0,
//                                color: Colors.white,
//                                fontStyle: FontStyle.italic,
//                              )
//                              ),
//                            )

                        )),
                  ),

                ],
              ),
            ),

    );
//
  }
}
