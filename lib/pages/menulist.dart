import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:recipe_firebaseapp/pages/detailpage.dart';
import 'package:recipe_firebaseapp/model class/recipemodel.dart';
import 'package:recipe_firebaseapp/widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'detailpage.dart';
import '';


class menulist extends StatefulWidget {
  final String catName;
  menulist({this.catName});

  @override
  _menulistState createState() => _menulistState();
}

class _menulistState extends State<menulist> {
  final  ref = FirebaseFirestore.instance.collection("recipe");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.deepOrangeAccent,
        title:
        // context.isMobile
        //     ? HeadingWidget()
        //        :WebHeading(),
        VxDevice(
          mobile: VxBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // widget.data.text.size(13).makeCentered(),
                    "Menu Details".text.xl2.makeCentered(),
                  ],
                ).p(90),
                //CirularAvtar(),
              ],
            ),
          ).make(),
          web: VxBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              //  CirularAvtar(),
                Row(
                  children: [
                    "Menu Details".text.xl2.make(),
                  ],
                ),
              //  SearchBar(),
              ],
            ),
          ).width(context.screenWidth).make(),
        ),
      ),
      drawer: context.isMobile
          ? Drawer(
        child: drawer(),
      )
          : null,
      body: StreamBuilder(
        stream: ref.where("catName",isEqualTo: widget.catName).snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            List<Recipe> dataList = snapshot.data.docs.map((e) => Recipe.fromJson(e.data()))
                .toList();
            return ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
                scrollDirection:
                context.isMobile ? Axis.horizontal : Axis.vertical,
                shrinkWrap: true,
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  // return InkWell(
                  //   onTap: () {
                  //     Navigator.push(context,
                  //         MaterialPageRoute(builder: (_) => menulist()));
                  //   },
                    child:
                    return Card(
                      elevation: 4,
                      child: VxBox(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>detailpage(listdata: dataList[index])));
                          },
                          child: Column(
                              children:[
                                (dataList[index].recipeName).text.color(Colors.white).make(),
                                (dataList[index].recipeCal).text.color(Colors.white).make(),
                         Container(
                           height: 200,
                             width: 100,

                             child: Image.network(dataList[index].recipeImage,fit: BoxFit.cover,)),
                              ]),
                        ),
                      ).height(300).width(100).outerShadowLg.roundedSM.color(Color(0xFF7C3A2F)).make().p4(),
                    );


                });
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}