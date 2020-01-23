import 'package:flutter/material.dart';
import 'package:dventure/Home.dart';

void main() => runApp(Dventure());

class Dventure extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Adventure Tours',
      home: Home(),
    );
  }
}
