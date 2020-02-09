import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: (){},
      ),
      body:   Center(
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              backgroundColor: Colors.green,
              pinned: true,
              expandedHeight: 500.0,
              flexibleSpace: FlexibleSpaceBar(

//                title: Text('Variety'),
                background: Image(
                  image: AssetImage('assets/image.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),actions: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    hintText: 'Search anything',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.white),
                  )
                ),
//                IconButton(
//                  icon: const Icon(Icons.menu),
//                  tooltip: 'MORE',
//                  onPressed: null,
//                )
                ]
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Center(
                                  child: Text('Bangalow',
                                      style: TextStyle(
                                        color: Colors.brown,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: Icon(
                                Icons. star_border,
                                color: Colors.green,
                                size: 20.0,
                              ),
                            ),
                          ],
                        ),
                        new Positioned(
                          child: Icon(
                            Icons. phone,
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
                                        child: Text('Flats',
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
                                        child: Text('Single',
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
                                        child: Text('Apartment',
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
                                        child: Text('Suite',
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
                                        child: Text('Desque',
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
                                        child: Text('Ranch',
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
                                        child: Text('Block',
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
                                        child: Text('Stash House',
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
                                        child: Text('3 Bedroom',
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
                                        child: Text('Quaters',
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
    );
  }
}