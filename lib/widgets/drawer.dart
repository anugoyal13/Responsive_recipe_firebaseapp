import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
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
                  children: [
                    Icon(Icons.person,size: 70,),
                    //Image.asset("assets/images/person_icon.jpg",fit:BoxFit.fill,),
                    Text("Starters ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
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
                title: Text("Drinks"),
                //leading:Icon(Icons.person),
                trailing: Icon(Icons.arrow_forward),
              ),

            ListTile(
              title: Text("Currys"),
              //leading:Icon(Icons.bookmark_border),
              trailing: Icon(Icons.arrow_forward),
            ),

            ListTile(
              title: Text("Vegetables"),
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
