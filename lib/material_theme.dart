import 'package:flutter/material.dart';


class MyApp2 extends StatelessWidget {
  // This widget is the root of your application.
  //Better approach to themes in flutter use the material.io color tool for good color combination for your app.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Themes',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.cyan,
        accentColor: Colors.orange,
        textTheme: TextTheme(
          headline: TextStyle(color: Colors.white, fontSize: 40),
          subhead: TextStyle(fontSize: 30),
          body1: TextStyle(fontSize: 20),
          body2: TextStyle(fontSize: 10),
          button: TextStyle(),
        ),
      ),
      home: MainScreen(),
    );
  }
}
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Themes'),),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('HeaderText testing',style: Theme.of(context).textTheme.headline),
              Text('Subheader testing',style: Theme.of(context).textTheme.subhead),
              Text('Body1 testing',style: Theme.of(context).textTheme.body1),
              Text('Body2 testing',style: Theme.of(context).textTheme.body2.copyWith(color: Theme.of(context).accentColor)),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.3),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
//        currentIndex: _selectedIndex,
//        selectedItemColor: Colors.amber[800],
//        onTap: _onItemTapped,
      ),
    );
  }
}
