import 'package:flutter/material.dart';

import 'hal_komputer.dart' as komputer;
import 'hal_radio.dart'as radio;
import 'hal_headset.dart'as headset;
import 'hal_smarthphone.dart' as smartphone;
void main(){

   runApp(new MaterialApp(
     title: "Pichanga Admin",
     home: new Home(),
   ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController( vsync: this,length: 4);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("Pichanga Admin"),
        bottom: new TabBar(
            controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.person),text: "Computer",),
            new Tab(icon: new Icon(Icons.monetization_on),text: "Headset",),
            new Tab(icon: new Icon(Icons.directions_walk),text: "Radio",),
            new Tab(icon: new Icon(Icons.smartphone),text: "Computer",),
          ],
        ),
      ),
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
             new komputer.Komputer(),
             new headset.Headset(),
             new radio.Radio(),
            new smartphone.Smartphone()

          ]),
      bottomNavigationBar: new Material(
        color: Colors.green,
        child: new TabBar(
          controller: controller,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.person),text: "Computer",),
              new Tab(icon: new Icon(Icons.monetization_on),text: "Headset",),
              new Tab(icon: new Icon(Icons.directions_walk),text: "Radio",),
              new Tab(icon: new Icon(Icons.smartphone),text: "Computer",),
            ]),
      ),
    );
  }
}

