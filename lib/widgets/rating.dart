import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class rating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VxDevice(
        mobile: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("PREP TIME:   20 MINS").text.extraBlack.make().p4(),
              Text("COOKING TIME:    20 MINS").text.extraBlack.make().p4(),
              Text("SERVINGS:   2").text.extraBlack.make().p4(),
              Text("RATING:    ****").text.extraBlack.make().p4(),
            ],


    ),
        ).h(110).w(context.screenWidth).p16(),
        web:Card(
          child: Expanded(
            child: Row(
              children: [
                Text("PREP TIME:  20 MINS").text.extraBlack.make().px20(),
                Text("COOKING TIME:  20 MINS").text.extraBlack.make().px20(),
                Text("SERVINGS:  2").text.extraBlack.make().px20(),
                Text("RATING:  ****").text.extraBlack.make().px20(),
              ],
            ),
          ),
        ).h(80).w(context.screenWidth).p8(),

    );
  }
}
