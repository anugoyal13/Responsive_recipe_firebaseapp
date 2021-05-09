import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class slider extends StatefulWidget {
  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: VxSwiper.builder(
        itemCount: 5,
        height: context.isMobile?200:300,
        aspectRatio: 16/9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: false,
        isFastScrollingEnabled: false,
       // onPageChanged: callbackFunction,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Image.network("https://as2.ftcdn.net/jpg/02/38/93/69/500_F_238936968_uTaqV0VjT1YoICnxIoYTRv142TGEMvd7.jpg",fit: BoxFit.fill,);
          // return "Item $index".text.white.make()
          //     .box.rounded.alignCenter.color(Vx.randomOpaqueColor).make()
          //     .p4();
        },
      ),
    );
  }
}
