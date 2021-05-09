import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class content3 extends StatefulWidget {
  @override
  _content3State createState() => _content3State();
}

class _content3State extends State<content3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView.builder(
         // physics: context.isMobile?null:NeverScrollableScrollPhysics(),
          reverse: true,
          shrinkWrap: true,
          scrollDirection: context.isMobile?Axis.horizontal:Axis.vertical,
          itemCount:6,
          itemBuilder:(context,index){
            return VxBox(
                child: VxDevice(
                  mobile: Column(
                      children:[
                        Image.network("https://as2.ftcdn.net/jpg/02/86/19/01/500_F_286190174_9PXr0tIQrQo3kcwvwVsmYnkxN9dCcAQc.jpg",height:130,width:130,fit: BoxFit.cover,),
                        15.heightBox,
                        "Recipe name".text.black.makeCentered(),
                      ]

                  ),
                  web: Row(
                      children:[
                        Image.network("https://as2.ftcdn.net/jpg/02/86/19/01/500_F_286190174_9PXr0tIQrQo3kcwvwVsmYnkxN9dCcAQc.jpg",height:100,width:100,fit: BoxFit.cover,),
                        //10.widthBox,
                        "Recipe name".text.black.makeCentered(),
                      ]

                  ),
                )



            ).p4.make();
          }
      ),
    );
  }
}
