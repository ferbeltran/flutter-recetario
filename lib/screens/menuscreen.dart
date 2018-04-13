import 'package:flutter/material.dart';
import '../menuitem.dart';
import '../scaffold.dart';

class MenuScreen extends StatefulWidget {
  @override
  MenuScreenState createState() => new MenuScreenState();
}

class MenuScreenState extends State<MenuScreen> with SingleTickerProviderStateMixin {

  AnimationController titleAnimationController;

  @override
  void initState() {
    super.initState();

    titleAnimationController = new AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
  }

   createMenuTitle(MenuController menuController) {
    switch (menuController.state) {
      case MenuState.open:
      case MenuState.opening:
        titleAnimationController.forward();
        break;
      case MenuState.closed:
      case MenuState.closing:
      titleAnimationController.reverse();
      break;
    }
    
    return new AnimatedBuilder(
      animation: titleAnimationController,
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
                ))),
      builder: (BuildContext context, Widget child) {
        return new Transform(
          transform: new Matrix4.translationValues(
           250.0 * (1.0 - titleAnimationController.value) - 100.0,
            0.0,
            0.0,),
            child: child,
        );
      }
    );


  }

  createMenuItems(MenuController menuController) {
    return new Transform(
      transform: new Matrix4.translationValues(
        0.0, 225.5, 0.0),
        child: new Column(
          children: [ 
            new MenuItem(
              title: "AFEDO CAMATE POFAVO",
              isSelected: false,
              onTap: () {
                menuController.close();
              },
            ),
            new MenuItem(
              title: "WALMART YODELING",
              isSelected: true,
              onTap: () {
                menuController.close();
              },
            ),
            new MenuItem(
              title: "OH HI MARK",
              isSelected: false,
              onTap: () {
                menuController.close();
              },
            ),
          ]
        )
    );
  }



  @override
  Widget build(BuildContext context) {
     return new ZoomScaffoldMenuController(
       builder: (BuildContext context, MenuController menuController) {
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
              child: new Stack(children: [createMenuTitle(menuController), createMenuItems(menuController)]),
          ));
       } 
     );
  }
}