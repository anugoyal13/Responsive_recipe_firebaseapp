import 'package:flutter/material.dart';
import 'package:recipe_firebaseapp/pages/detailpage.dart';

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors:<Color>[
                      Colors.yellowAccent,
                      Colors.redAccent
                    ])
                ),
                child: Container(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [Container(
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
                      //Icon(Icons.person,size: 70,),
                      //Image.network("https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX7579696.jpg")
                      //Image.asset("assets/images/person_icon.jpg",fit:BoxFit.fill,),
                      //Text("Welcome ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                    ],
                  ),
                ),
              ),
              // InkWell(
              //   onTap:(){
              //     Navigator.push(context, MaterialPageRoute(
              //         builder: (_) => loginpage()));
              //   },
              ListTile(
                title: Text("Starters"),
                //leading:Icon(Icons.person),
                trailing: Icon(Icons.arrow_forward),
              ),

              ListTile(
                title: Text("Drinks"),
                //leading:Icon(Icons.bookmark_border),
                trailing: Icon(Icons.arrow_forward),
              ),

              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                           builder: (_) => detailpage()));

                },
                title: Text("Currys"),
                //leading:Icon(Icons.bookmark_border),
                trailing: Icon(Icons.arrow_forward),


              ),
              ListTile(
                title: Text("Rice"),
                //leading:Icon(Icons.notifications),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Bread"),
                //leading:Icon(Icons.settings),
                trailing: Icon(Icons.arrow_forward),
              ),

              ListTile(
                title: Text("Deserts"),
                //leading:Icon(Icons.lock),
                trailing: Icon(Icons.arrow_forward),
              ),

            ],
          ),
        )
    );
  }
}
