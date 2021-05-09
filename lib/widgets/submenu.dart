import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:recipe_firebaseapp/model class/categorymodel.dart';
import 'package:recipe_firebaseapp/pages/menulist.dart';

class submenu extends StatefulWidget {
  @override
  _submenuState createState() => _submenuState();
}

class _submenuState extends State<submenu> {
  final ref = FirebaseFirestore.instance.collection("category");
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
        stream: ref.snapshots(),
    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
    if(snapshot.hasData) {
      List<Category> dataList = snapshot.data.docs.map((e) =>
          Category.fromJson(e.data())).toList();

      return ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: context.isMobile ? Axis.horizontal : Axis.vertical,
          shrinkWrap: true,
          itemCount:dataList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) =>
                    menulist(catName: dataList[index].catName)));
              },
              child: VxBox(
                  child: (dataList[index].catName).text.bold.center.white.makeCentered()
              )
                  .height(80)
                  .width(100)
                  .roundedSM
                  .orange400
                  .shadowXl
                  .make()
                  .p4(),
            );

            // child: VxBox(
            //   child: "submenu".text.bold.center.white.makeCentered()
            // ).height(80).width(100).roundedSM.orange400.shadowXl.make().p4(),
          });
    }else {
    return CircularProgressIndicator();
    };
    },
      ) );
  }
}
