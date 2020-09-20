import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}
Color color = Colors.blueAccent;
String disp ='';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      bottomNavigationBar: CurvedNavigationBar(
        height: 70,
        animationDuration: Duration(microseconds: 400),
        backgroundColor: color,
        items: [
          Icon(Icons.add),
          Icon(Icons.home),
          Icon(Icons.search),
        ],
        onTap: (index){
          setState(() {
            if(index == 0){
              disp = 'Add';
              color = Colors.blueGrey;
            }else if(index == 1){
              disp = 'Home';
              color = Colors.pinkAccent;
            }else{
              disp = 'Search';
              color = Colors.deepPurple;
            }
          });
        },
      ),
      body: Center(
        child: Container(
          child: Text(
            disp,
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
