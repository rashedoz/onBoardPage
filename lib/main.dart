import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:porao_onboarding_app/pages.dart';

void main() {
  //Debugging UI widgets
  //debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(new OnBoardingApp());
}

class OnBoardingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Onboarding App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingState createState() => new _OnBoardingState();
}

class _OnBoardingState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
         new Page(
           viewModel: PageViewModel(
             Colors.red[200],
             'images/s.png',
             'Study',
             'Easy Porao',
             null


           ),
         ),
        ],
      ),
    );
  }
}
