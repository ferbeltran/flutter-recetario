   import 'package:flutter/material.dart';
   import 'scaffold.dart';

   final otherScreen = new Screen(
     title: 'AFEDO CAMATE POFAVO',
     background: new DecorationImage(
       image: new AssetImage('assets/fondo.jpg'),
       fit: BoxFit.cover,
       colorFilter: new ColorFilter.mode(const Color(0xCC000000), BlendMode.multiply),
     ),
     contentBuilder: (BuildContext context) {
       return new Center(
         child: new Container(
          height: 330.0,
          child: new Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Card(
            child:new Column(
              children: [
                new Image.asset('assets/huevos.jpg'),
                new Expanded(
                  child: new Center(
                    child: new Text('Era cura we')
                  )
                )
              ]
             )
            )
          )
          )
        );
      }

   );