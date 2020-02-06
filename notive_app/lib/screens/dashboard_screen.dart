import 'package:flutter/material.dart';
import 'package:notive_app/screens/constants.dart';
import 'package:notive_app/components/reusable_list_card.dart';

import '../components/reusable_list_card.dart';
import '../components/reusable_list_card.dart';
import '../components/reusable_list_card.dart';

class DashboardScreen extends StatefulWidget {
  static const String id = 'dashboard_screen';
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 1;
      print(_counter);
      //cards.add(new ReusableListCard(color: Colors.red,));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Dashboard',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new FloatingActionButton(
              child: Icon(Icons.add),
              //color: Colors.orangeAccent,
              elevation: 5.0,
              onPressed: _incrementCounter, //passed as function reference 
              tooltip: 'Increment',
            ),
            new Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
              height: 500.0,
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(3.0),
                children: <Widget>[
                  ReusableListCard(color: Colors.blue,),
                  ReusableListCard(color: Colors.red,),
                  ReusableListCard(color: Colors.yellow,),
                  ReusableListCard(color: Colors.pink,),
                  ReusableListCard(color: Colors.purple,),
                  ReusableListCard(color: Colors.cyanAccent,),
                  ReusableListCard(color: Colors.indigo,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Container(
//               padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
//               child: GridView.count(
//               crossAxisCount: 2,
//               padding: EdgeInsets.all(3.0),
//               children: <Widget>[
//                 ReusableListCard(color: Colors.blue,),
//                 ReusableListCard(color: Colors.red,),
//                 ReusableListCard(color: Colors.yellow,),
//                 ReusableListCard(color: Colors.pink,),
//                 ReusableListCard(color: Colors.purple,),
//                 ReusableListCard(color: Colors.cyanAccent,),
//                 ReusableListCard(color: Colors.indigo,)
//                 ],
//               ),
//             ), 