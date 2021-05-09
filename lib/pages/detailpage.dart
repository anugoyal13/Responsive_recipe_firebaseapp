import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_firebaseapp/model%20class/recipemodel.dart';
import 'package:recipe_firebaseapp/widgets/content3.dart';
import 'package:recipe_firebaseapp/widgets/menu.dart';
import 'package:recipe_firebaseapp/widgets/navigator.dart';
import 'package:recipe_firebaseapp/widgets/rating.dart';
import 'package:velocity_x/velocity_x.dart';

class detailpage extends StatefulWidget {
  final Recipe listdata;
  detailpage({this.listdata});
  @override
  _detailpageState createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  final ref = FirebaseFirestore.instance.collection("recipe");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: context.isMobile
          ? AppBar(
        title: Center(child: Text("Khana Khazana")),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
        backgroundColor: Colors.deepOrangeAccent,
      )
          : null,
      drawer: context.isMobile
          ? Drawer(
        child: menu(),
      )
          : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            VxDevice(
              mobile: Column(
                children: [
                  Container(),
                ],
              ),
              web: navigator(),
            ),
            SizedBox(height: 20,),
            Text(widget.listdata.recipeName)
                .text
                .xl4
                .extraBlack
                .extraBold
                .align(TextAlign.start)
                .make(),
            20.heightBox,
            VxDevice(
              mobile: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  VxBox(
                      child: Image.network(widget.listdata.recipeImage
                        ,
                        height: 200,
                        width: context.screenWidth,
                        fit: BoxFit.cover,
                      )).p20.make(),
                  20.heightBox,
                  rating(),
                  15.heightBox,
                  //Text(widget.listdata.recipeIngredients).text.xl2.bold.black.make(),
                  15.heightBox,
                  Text("Method:").text.xl2.bold.black.make(),
                  15.heightBox,
                  Text("Trending Recipes").text.xl2.bold.black.make(),
                  20.heightBox,
                  //  content3().h(300).w(600),

                ],
              ),
              web: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VxBox(
                        child: Image.network(
                          widget.listdata.recipeImage,
                          height: 600,
                          width: 600,
                          fit: BoxFit.cover,
                        ),
                      ).make().p12(),
                      //25.widthBox,
                      // rating().p12(),
                      25.widthBox,
                      //Text("Trending Recipes").text.xl2.bold.black.make(),
                      Card(
                        child: Column(
                          children: [
                            Text("Trending Recipes").text.xl2.bold.black.make().p8(),
                            content3().h(600).w(200).p4(),
                          ],
                        ),
                      ),

                    ],
                  ).p12(),
                  //  .h(context.screenHeight * 0.3)
                  //  .w(context.screenWidth)
                  //  .p20(),
                  15.heightBox,
                  // rating().expand().p12(),
                  15.heightBox,
                  Text("Ingredients:").text.xl2.bold.black.make(),
                  35.heightBox,
                  Text("Method:").text.xl2.bold.black.make(),
                ],
              ),
            ).scrollVertical(),
          ],
        ),
      ),
    );

  }
}