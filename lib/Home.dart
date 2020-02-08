import 'package:flutter/material.dart';
import 'package:dventure/category.dart';
import 'package:torch/torch.dart';

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
    Center(
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            backgroundColor: Colors.amber,
            pinned: true,
            expandedHeight: 500.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage('assets/image.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                ///no.of items in the horizontal axis
                crossAxisCount: 2,
              ),

              ///Lazy building of list
              delegate: SliverChildListDelegate([
                Card(
                  elevation: 8.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 10.0),
                          height: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                              image: DecorationImage(image: AssetImage('assets/image.jpeg'),
                              fit: BoxFit.cover),

                            ),),
                      ),
                      new Positioned(
                        left: 10.0,
                        bottom: 5.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: Text('1 Bedroom',
                                          style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      new Positioned(
                        child: Icon(
                          Icons.rate_review,
                          color: Colors.green,
                          size: 20.0,
                        ),
                        right: 15.0,
                        bottom: 0.0,
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 8.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 10.0),
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                            image: DecorationImage(image: AssetImage('assets/image1.jpeg'),
                                fit: BoxFit.cover),

                          ),),
                      ),
                      new Positioned(
                        left: 10.0,
                        bottom: 5.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: Text('1 Bedroom',
                                          style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      new Positioned(
                        child: Icon(
                          Icons.rate_review,
                          color: Colors.green,
                          size: 20.0,
                        ),
                        right: 15.0,
                        bottom: 0.0,
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 8.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 10.0),
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                            image: DecorationImage(image: AssetImage('assets/image2.jpeg'),
                                fit: BoxFit.cover),

                          ),),
                      ),
                      new Positioned(
                        left: 10.0,
                        bottom: 5.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: Text('1 Bedroom',
                                          style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      new Positioned(
                        child: Icon(
                          Icons.rate_review,
                          color: Colors.green,
                          size: 20.0,
                        ),
                        right: 15.0,
                        bottom: 0.0,
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 8.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 10.0),
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                            image: DecorationImage(image: AssetImage('assets/image3.jpeg'),
                                fit: BoxFit.cover),

                          ),),
                      ),
                      new Positioned(
                        left: 10.0,
                        bottom: 5.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: Text('1 Bedroom',
                                          style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      new Positioned(
                        child: Icon(
                          Icons.rate_review,
                          color: Colors.green,
                          size: 20.0,
                        ),
                        right: 15.0,
                        bottom: 0.0,
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 8.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 10.0),
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                            image: DecorationImage(image: AssetImage('assets/image4.jpeg'),
                                fit: BoxFit.cover),

                          ),),
                      ),
                      new Positioned(
                        left: 10.0,
                        bottom: 5.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: Text('1 Bedroom',
                                          style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      new Positioned(
                        child: Icon(
                          Icons.rate_review,
                          color: Colors.green,
                          size: 20.0,
                        ),
                        right: 15.0,
                        bottom: 0.0,
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 8.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 10.0),
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                            image: DecorationImage(image: AssetImage('assets/image5.jpeg'),
                                fit: BoxFit.cover),

                          ),),
                      ),
                      new Positioned(
                        left: 10.0,
                        bottom: 5.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: Text('1 Bedroom',
                                          style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      new Positioned(
                        child: Icon(
                          Icons.rate_review,
                          color: Colors.green,
                          size: 20.0,
                        ),
                        right: 15.0,
                        bottom: 0.0,
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 8.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 10.0),
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                            image: DecorationImage(image: AssetImage('assets/image6.jpeg'),
                                fit: BoxFit.cover),

                          ),),
                      ),
                      new Positioned(
                        left: 10.0,
                        bottom: 5.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: Text('1 Bedroom',
                                          style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      new Positioned(
                        child: Icon(
                          Icons.rate_review,
                          color: Colors.green,
                          size: 20.0,
                        ),
                        right: 15.0,
                        bottom: 0.0,
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 8.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 10.0),
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                            image: DecorationImage(image: AssetImage('assets/image7.jpeg'),
                                fit: BoxFit.cover),

                          ),),
                      ),
                      new Positioned(
                        left: 10.0,
                        bottom: 5.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: Text('1 Bedroom',
                                          style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      new Positioned(
                        child: Icon(
                          Icons.rate_review,
                          color: Colors.green,
                          size: 20.0,
                        ),
                        right: 15.0,
                        bottom: 0.0,
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 8.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 10.0),
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                            image: DecorationImage(image: AssetImage('assets/image8.jpeg'),
                                fit: BoxFit.cover),

                          ),),
                      ),
                      new Positioned(
                        left: 10.0,
                        bottom: 5.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: Text('1 Bedroom',
                                          style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      new Positioned(
                        child: Icon(
                          Icons.rate_review,
                          color: Colors.green,
                          size: 20.0,
                        ),
                        right: 15.0,
                        bottom: 0.0,
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 8.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 10.0),
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                            image: DecorationImage(image: AssetImage('assets/image9.jpeg'),
                                fit: BoxFit.cover),

                          ),),
                      ),
                      new Positioned(
                        left: 10.0,
                        bottom: 5.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: Text('1 Bedroom',
                                          style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      new Positioned(
                        child: Icon(
                          Icons.rate_review,
                          color: Colors.green,
                          size: 20.0,
                        ),
                        right: 15.0,
                        bottom: 0.0,
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 8.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 10.0),
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                            image: DecorationImage(image: AssetImage('assets/image10.jpeg'),
                                fit: BoxFit.cover),

                          ),),
                      ),
                      new Positioned(
                        left: 10.0,
                        bottom: 5.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: Text('1 Bedroom',
                                          style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      new Positioned(
                        child: Icon(
                          Icons.rate_review,
                          color: Colors.green,
                          size: 20.0,
                        ),
                        right: 15.0,
                        bottom: 0.0,
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 8.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 10.0),
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                            image: DecorationImage(image: AssetImage('assets/image11.jpeg'),
                                fit: BoxFit.cover),

                          ),),
                      ),
                      new Positioned(
                        left: 10.0,
                        bottom: 5.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: Text('1 Bedroom',
                                          style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      new Positioned(
                        child: Icon(
                          Icons.rate_review,
                          color: Colors.green,
                          size: 20.0,
                        ),
                        right: 15.0,
                        bottom: 0.0,
                      )
                    ],
                  ),
                ),
              ])),
        ],
      ),
    ),
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
