import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class navigator extends StatefulWidget {
  @override
  _navigatorState createState() => _navigatorState();
}

class _navigatorState extends State<navigator> {
  //final ref = FirebaseFirestore.instance.collection("category");
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: VxBox(
        //height: 120,
       // width: 2000,
       // color: Colors.deepOrangeAccent,

        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX7579696.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Column(
              children: [
                //"Khana Khazana".text.white.makeCentered(),
                VxBox(
                  child: "Khana Khazana".text.white.size(25).bold.makeCentered(),
                )
                    .height(context.screenHeight * 0.1)
                    .width(context.screenWidth * 0.2)

                    .roundedLg
                    .make(),

                VxBox(
                  //height(context.screenHeight*0.1),
                // width(context.screenHeight),
                  child: Row(
                    children: [
                      ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return VxBox(
                              child: "menu".text.white.makeCentered(),
                            )
                                .height(context.screenHeight * 0.2)
                                .width(context.screenWidth * 0.15)
                                .roundedLg.p4
                                .make();
                          }),
                      Icon(Icons.search,color: Colors.white,size: 30,),
                    ],
                  ),

                ).height(context.screenHeight * 0.1)
                    .width(context.screenWidth *0.8).
                make(),
              ],
            )
          ],
        ),
      ).height(context.screenHeight*0.2).width((context.screenWidth)).orange500
          .make(),
    );
  }
}
