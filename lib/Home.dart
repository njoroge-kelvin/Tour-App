import 'package:flutter/material.dart';
import 'package:dventure/category.dart';
import 'package:torch/torch.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

bool _isVisible;
int _cIndex = 0;

class HomeState extends State<Home>{


  @override
  void initState(){
    super.initState();
    _isVisible = true;
  }

//  void showToast() {
//    setState(() {
//      _isVisible = !_isVisible;
//    });
//  }

  final tabs = [
    Center(
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Demo'),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    ),
    Center(
      child: ShopCategory(),
    ),
    Center(
      child: Container(
        margin: EdgeInsets.only(top: 50.0),
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index)=> Container(
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              if(_isVisible){
                _isVisible = !_isVisible;
                Torch.turnOn();
              }else{
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
                child: Text(
                  'Torch'
                ),
              ),
            ),
          ),
        ],
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
//      Column(
//        mainAxisAlignment: MainAxisAlignment.start,
//        mainAxisSize: MainAxisSize.max,
//        children: <Widget>[
//          Row(
//            mainAxisAlignment: MainAxisAlignment.start,
//            mainAxisSize: MainAxisSize.max,
//            children: <Widget>[
//              ButtonBar(
//                children: <Widget>[
//                  new RaisedButton(
//                    onPressed: null,
//                    child: new Text('Kilifi'),
//                    focusColor: Colors.cyanAccent,
//                    textColor: Colors.green,
//                  ),
//                  new RaisedButton(
//                    onPressed: null,
//                    child: new Text('Malindi'),
//                  ),
//                  new RaisedButton(
//                    onPressed: null,
//                    child: new Text('Mombasa'),
//                  ),
//                  new RaisedButton(
//                    onPressed: null,
//                    child: new Text('Watamu'),
//                  ),
//                  new RaisedButton(
//                    onPressed: null,
//                    child: new Text('Voi'),
//                  ),
//                ],
//              )
//            ],
//          )
//        ],
//      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _cIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.cyanAccent,
          selectedItemColor: Colors.green,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.mail),
              title: new Text('Messages'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Profile')),
            BottomNavigationBarItem(
                icon: Icon(Icons.cake), title: Text('Food')),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card), title: Text('pay')),
          ],
          onTap: (index) {
            setState(() {
              _cIndex = index;
            });
          }),
    );
  }
}
