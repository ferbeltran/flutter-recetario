import 'package:flutter/material.dart';

class DishCard extends StatelessWidget {
  final String headImageAssetPath;
  final IconData icon;
  final Color iconBackgroundColor;
  final String title;
  final String subtitle;
  final int heartCount;

  DishCard(
      {this.headImageAssetPath,
      this.icon,
      this.iconBackgroundColor,
      this.title,
      this.subtitle,
      this.heartCount});

  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding: new EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
        child: new Container(
            decoration: new BoxDecoration(boxShadow: [
              new BoxShadow(
                color: const Color(0x44000000),
                offset: const Offset(0.0, 3.0),
                blurRadius: 20.0,
                spreadRadius: 20.0,
              ),
            ]),
            child: new ClipRRect(
                borderRadius: new BorderRadius.circular(25.0),
                child: new Card(
                    elevation: 10.0,
                    child: new Column(children: [
                      new Image.asset(headImageAssetPath,
                          width: double.infinity,
                          height: 150.0,
                          fit: BoxFit.cover),
                      new Row(children: [
                        new Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: new Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: new BoxDecoration(
                                color: iconBackgroundColor,
                                borderRadius: new BorderRadius.all(
                                    new Radius.circular(15.0)),
                              ),
                              child: new Icon(
                                icon,
                                color: Colors.white,
                              )),
                        ),
                        new Expanded(
                            child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              new Text(title,
                                  style: const TextStyle(
                                    fontSize: 25.0,
                                    fontFamily: 'mermaid',
                                  )),
                              new Text(subtitle,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'bebas-neue',
                                    letterSpacing: 1.0,
                                    color: const Color(0xFFAAAAAA),
                                  ))
                            ])),
                        new Container(
                            width: 2.0,
                            height: 70.0,
                            decoration: new BoxDecoration(
                              gradient: new LinearGradient(
                                colors: [
                                  Colors.white,
                                  Colors.white,
                                  const Color(0xFFAAAAAA),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            )),
                        new Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            child: new Column(children: [
                              new Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              ),
                              new Text(
                                '$heartCount',
                              )
                            ])),
                      ])
                    ])))));
  }
}
