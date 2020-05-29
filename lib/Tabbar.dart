import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ScienctificCalculator/scientificCalculator.dart';
import 'UnitConverter/UnitConverter.dart';
import 'calculator.dart';



class HomePageUI extends StatefulWidget {
  @override
  _HomePageUI createState() => _HomePageUI();
}

class _HomePageUI extends State<HomePageUI> {
 

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Calculator'.toUpperCase(), style: TextStyle(color: Colors.black,
        fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.white,
        elevation: 0,
      bottom: TabBar(
      indicatorColor:Colors.lightBlueAccent ,
      labelColor: Colors.black,
      tabs: [
      Tab(icon: Icon(FontAwesomeIcons.calculator, color: Colors.black)),
      Tab(icon: Icon(FontAwesomeIcons.flask, color: Colors.black)),
      Tab(icon: Icon(FontAwesomeIcons.rulerHorizontal, color: Colors.black)),
    ]),

    
      ),
      body: TabBarView(children: <Widget>[
        Calculator(),
        ScientificCalculator(),
        UnitConverter()
      ],),
    ),
  );
  }
}