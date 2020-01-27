import 'package:flutter/material.dart';


class MyApp1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/FirstPage' : (BuildContext context) => FirstPage(),
        '/InitialPage' : (BuildContext context) => InitialPage(),
        '/SecondPage' : (BuildContext context) => SecondPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InitialPage(),
    );
  }
}

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Navigate to firstpage'),
              onPressed: (){
                Navigator.pushNamed(context, '/FirstPage');
              },
            ),
            RaisedButton(
              child: Text('Navigate to secondpage'),
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/SecondPage');
              },
            ),
            RaisedButton(
              child: Text('Navigate to thirdpage'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> ThirdPage()),);
              },
            ),

          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[FlatButton(
          child: Text('|BACK'),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/InitialPage');
          },
        ),],
        title: Text('Secondpage'),
      ),
      body: Center(child: Container(child: Text('SecondPage')),),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[FlatButton(
          child: Text('|BACK'),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/InitialPage');
          },
        ),],
        title: Text('Secondpage'),
      ),
      body: Center(child: Container(child: Text('SecondPage')),),
    );
  }
}


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firstpage'),
      ),
        body: Center(child: Container(child: Text('FirstPage')),),
    );
  }
}



