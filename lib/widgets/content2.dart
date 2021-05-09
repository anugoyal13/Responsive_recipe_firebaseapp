import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class content2 extends StatefulWidget {
  @override
  _content2State createState() => _content2State();
}

class _content2State extends State<content2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
       physics: context.isMobile?NeverScrollableScrollPhysics():null,
        reverse: true,
        shrinkWrap: true,
        scrollDirection: context.isMobile?Axis.vertical:Axis.horizontal,
        itemCount:6,
          itemBuilder:(context,index){
            return VxBox(
              child: VxDevice(
                mobile: Row(
                    children:[
                      Image.network("https://as2.ftcdn.net/jpg/02/86/19/01/500_F_286190174_9PXr0tIQrQo3kcwvwVsmYnkxN9dCcAQc.jpg",height:200,width:200,fit: BoxFit.cover,),
                      15.widthBox,
                      "Recipe name".text.white.makeCentered(),
                    ]

                ),
                web: Column(
                    children:[
                      Image.network("https://as2.ftcdn.net/jpg/02/86/19/01/500_F_286190174_9PXr0tIQrQo3kcwvwVsmYnkxN9dCcAQc.jpg",height:200,width:200,fit: BoxFit.cover,),
                      15.heightBox,
                      "Recipe name".text.white.makeCentered(),
                    ]

                ),
              )



            ).p4.make();
         }
      ),
    );
  }
}
