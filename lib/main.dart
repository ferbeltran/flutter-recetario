import 'package:flutter/material.dart';
import 'cookingbookscreen.dart';
import 'otherscreen.dart';
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

  createMenuTitle() {
    return new Transform(
        transform: new Matrix4.translationValues(
          -100.0,
          0.0,
          0.0,
        ),
        child: new OverflowBox(
            maxWidth: double.infinity,
            alignment: Alignment.topLeft,
            child: new Padding(
                padding: const EdgeInsets.all(30.0),
                child: new Text(
                  'Menu',
                  style: new TextStyle(
                      color: const Color(0x88444444),
                      fontSize: 240.0,
                      fontFamily: 'mermaid'),
                  textAlign: TextAlign.left,
                  softWrap: false,
                ))));
  }

  createMenuItems() {
    return new Transform(
      transform: new Matrix4.translationValues(
        0.0, 225.5, 0.0),
        child: new Column(
          children: [ 
            new MenuItem(
              title: "AFEDO CAMATE POFAVO",
              isSelected: false
            ),
            new MenuItem(
              title: "WALMART YODELING",
              isSelected: true
            ),
            new MenuItem(
              title: "OH HI MARK",
              isSelected: false
            ),
          ]
        )
    );
  }

  createMenuScreen() {
    return new Container(
      width: double.infinity,
      height: double.infinity,
      decoration: new BoxDecoration(
          image: new DecorationImage(
        image: new AssetImage('assets/grunge.jpg'),
        fit: BoxFit.cover,
      )),
      child: new Material(
        color: Colors.transparent,
        child: new Stack(children: [createMenuTitle(), createMenuItems()]),
    ));
  }

  createContentDisplay() {
    return new Container(
        decoration: new BoxDecoration(
          image: activeScreen.background,
        ),
        child: new Scaffold(
          backgroundColor: Colors.transparent,
          appBar: new AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: new IconButton(
                icon: new Icon(Icons.menu),
                onPressed: () {
                  //TODO:
                }),
            title: new Text(activeScreen.title,
                style: new TextStyle(fontFamily: 'bebas-neue', fontSize: 25.0)),
          ),
          body: activeScreen.contentBuilder(context),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(children: [
      createMenuScreen(),
      //createContentDisplay()
    ]);
  }
}
