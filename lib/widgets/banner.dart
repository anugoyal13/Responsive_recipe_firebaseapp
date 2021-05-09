import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class banner extends StatefulWidget {
  @override
  _bannerState createState() => _bannerState();
}

class _bannerState extends State<banner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:VxBox(
        //child: Text("welcome"),
       child: "Welcome".text.white.makeCentered(),
         ).height(context.screenHeight*0.15).width(context.screenWidth).black.roundedLg.make().p4(),

    );
  }
}



