import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe_firebaseapp/widgets/submenu.dart';
import 'package:velocity_x/velocity_x.dart';

import 'latestrecipe.dart';
class content1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VxDevice(mobile: Column(
      children:[
        //Text("Featured Recipes").text.orange500.xl2.make(),
        submenu().h(50),
        SizedBox(height: 15,),
        Text("Popular Recipes").text.bold.white.xl2.align(TextAlign.start).make(),
        SizedBox(height: 15,),
        latestrecipe().h(300),
    ]
    ),web: Row(
      children: [

        submenu().h(300).w(300),
        //Text("Popular Recipes").text.orange500.xl2.make(),
        latestrecipe().h(300).expand(),
      ],

    ),



    );
  }
}
