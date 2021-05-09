import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:recipe_firebaseapp/widgets/content1.dart';
import 'package:recipe_firebaseapp/widgets/content2.dart';
import 'package:recipe_firebaseapp/widgets/latestrecipe.dart';
import 'package:recipe_firebaseapp/widgets/menu.dart';
import 'package:recipe_firebaseapp/widgets/navigator.dart';
import 'package:recipe_firebaseapp/widgets/slider.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:recipe_firebaseapp/widgets/banner.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  // void initState(){
  //   super.initState();
  //   upload();
  //
  // }
  // Future upload() async{
  //initialize firebase
  //   await Firebase.initializeApp();

  //upload documents to firestore
  //   final refuser=FirebaseFirestore.instance.collection('user').doc();
  //   await refuser.set({'username':'AnuG'});
  //upload file to firebase storage
  // }
  //@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: context.isMobile ? AppBar(
        title: Center(child: Text("Khana Khazana")), actions: [
        IconButton(
          icon: Icon(Icons.search, color: Colors.white, size: 30,),
        )
      ]
        , backgroundColor: Colors.deepOrangeAccent,) : null,
      drawer: context.isMobile ? Drawer(child: menu(),) : null,
      body: Column(
        children: [
          VxDevice(mobile: Column(
            children: [
              Container(),
            ],
          ), web: navigator(),),
          //SizedBox(height: 20,),
          20.heightBox,
          slider().w(context.screenWidth).p4(),
          40.heightBox,
          //SizedBox(height: 20,),
          VxDevice(mobile: Container(),
            web: Text("Popular Recipes").text.extraBold.white.xl2.align(
                TextAlign.start).make(),),
          //Text("Popular Recipes").text.orange500.xl2.make(),
          //SizedBox(height: 15,),
          15.heightBox,
          content1(),
          50.heightBox,
          Text("Recipe of the week").text.extraBold.white.xl2.align(
              TextAlign.start).make(),
          15.heightBox,
          content2().h(context.isMobile?null:300),
          //  latestrecipe().h(300),
        ],
      ).scrollVertical(),

    );
  }

}