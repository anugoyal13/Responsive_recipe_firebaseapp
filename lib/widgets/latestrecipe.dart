import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class latestrecipe extends StatefulWidget {
  @override
  _latestrecipeState createState() => _latestrecipeState();
}

class _latestrecipeState extends State<latestrecipe> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
       // physics: NeverScrollableScrollPhysics(),
        //reverse: true,
        itemCount: 10,
        scrollDirection: context.isMobile?Axis.horizontal:Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: context.isMobile?2:4),
        itemBuilder: (context,index){
          return VxBox(
            child: Column(
              children: [
                Container(
                  height:120,
                    width:120,
                    child: Image.network("https://as1.ftcdn.net/jpg/02/04/06/68/500_F_204066823_4KIY87yqpbIiWG6sH1WCrcXJo5Z5CyA6.jpg",fit:BoxFit.cover)),
                Text("Paneer tikka").text.white.makeCentered(),
              ],
            )

          ).height(4).width(5)
          
          .make();

        }
    );
  }
}
