import 'package:flutter/material.dart';
import 'package:dventure/category.dart';
import 'package:torch/torch.dart';
import 'package:dventure/HomePage.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

bool _isVisible;
int _cIndex = 0;

class HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    _isVisible = true;
  }

//  void showToast() {
//    setState(() {
//      _isVisible = !_isVisible;
//    });
//  }

  final tabs = [
    HomePage(),
    ShopCategory(),
    Center(
      child: Container(
        margin: EdgeInsets.only(top: 50.0),
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) => Container(
            child: Text('CHILD'),
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          itemCount: 10,
        ),
      ),
    ),
    Center(
      child: GestureDetector(
        onTap: () {
          if (_isVisible) {
            _isVisible = !_isVisible;
            Torch.turnOn();
          } else {
            _isVisible = !_isVisible;
            Torch.turnOff();
          }
        },
        child: Visibility(
          child: Container(
            padding: EdgeInsets.all(50.0),
            decoration: BoxDecoration(
              color: Colors.purple,
              shape: BoxShape.circle,
            ),
            child: Text('Torch'),
          ),
        ),
      ),
    ),
    Center(
      child: Text('5'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('Dventure Kilifi'),
//        backgroundColor: Colors.tealAccent,
//      ),
      body: tabs[_cIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _cIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.green,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.mail,
                color: Colors.white,
              ),
              title: new Text('Messages'),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text('Profile')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.cake,
                  color: Colors.white,
                ),
                title: Text('Food')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.credit_card,
                  color: Colors.white,
                ),
                title: Text('pay')),
          ],
          onTap: (index) {
            setState(() {
              _cIndex = index;
            });
          }),
    );
  }
}
