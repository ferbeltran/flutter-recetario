import 'package:flutter/material.dart';
import 'screens/cookingbookscreen.dart';
import 'screens/otherscreen.dart';
import 'screens/menuscreen.dart';
import 'scaffold.dart';
import 'menuitem.dart';

void main() {
  runApp(new MaterialApp(home: new Cooking()));
}

class Cooking extends StatefulWidget {
  @override
  CookingState createState() => new CookingState();
}

class CookingState extends State<Cooking> {
 
  var activeScreen = cookingBookScreen;
 
  @override
  Widget build(BuildContext context) {
    return new ZoomScaffold(
      menuScreen: new MenuScreen(),
      contentScreen: activeScreen,
    );
  }
}
