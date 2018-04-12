   import 'package:flutter/material.dart';
   import 'scaffold.dart';
   import 'dishcard.dart';
   
   final Screen cookingBookScreen = new Screen(
     title: 'RECETARIO MEXICANO',
     background: new DecorationImage(
       image: new AssetImage('assets/wood.jpg'),
       fit: BoxFit.cover,
     ),
     contentBuilder: (BuildContext context) {
       return new ListView(
            children: [
              new DishCard(
                headImageAssetPath: 'assets/huevos.jpg',
                title: 'huevos rancheros',
                subtitle: 'desayuno mexicano',
                icon: Icons.fastfood,
                iconBackgroundColor: Colors.red,
                heartCount: 84),
              new DishCard(
                headImageAssetPath: 'assets/chiles.jpg',
                title: 'chiles en nogada',
                subtitle: 'maravillas de otoño',
                icon: Icons.local_dining,
                iconBackgroundColor: Colors.blue,
                heartCount: 100),
              new DishCard(
                headImageAssetPath: 'assets/pozole.jpg',
                title: 'pozole rojo',
                subtitle: 'como la abuela!',
                icon: Icons.fastfood,
                iconBackgroundColor: Colors.amber,
                heartCount: 94),
          ]);
     }
   );