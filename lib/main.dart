import 'package:flutter/material.dart';
import 'package:fluttertutorials/material_theme.dart';

import 'route_navigation.dart';

void main() => runApp(MyApp2());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Day1(title: 'Widget of the week'),
    );
  }
}

class Day1 extends StatefulWidget {
  final String title;
  Day1({Key key, this.title}) : super(key: key);

  @override
  _Day1State createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  bool enableSafeArea = false;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      top: enableSafeArea,
      child: Scaffold(
        body:Stack(
          children: [
            Text('If you press the button safe area wil be enabled, Press the button and everything will be safe in the window'),
            Center(
              child: RaisedButton(
                child: Text('click me to enable safearea'),
                onPressed: (){
                  setState(() {
                    enableSafeArea=!enableSafeArea;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
