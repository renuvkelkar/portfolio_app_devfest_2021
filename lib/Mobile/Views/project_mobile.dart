import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class Project extends StatefulWidget {
  final projectKey;
  Project(this.projectKey);



  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return
    VxBox(
      child:
      Container(
        key: widget.projectKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("< Projects >").text.bold.xl6.size(20).gray800.make().p16(),
            10.heightBox,
            VxSwiper(
                scrollDirection: Axis.horizontal,
                // aspectRatio: 16/9,
                height:context.isMobile? context.screenHeight*0.3:context.screenHeight*0.7,
                enableInfiniteScroll: true,
                initialPage: 0,
                viewportFraction: 0.9,
                reverse: false,
                enlargeCenterPage: true,
                isFastScrollingEnabled: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeInCubic,
                items: [

                  VxBox(
                      child: Image.network("https://image.freepik.com/free-psd/moody-restaurant-food-web-site-mock-up_23-2148406845.jpg",height: context.screenHeight*0.5,width: context.screenWidth,)
                  ).width(context.screenWidth).height(context.screenHeight*0.5).make(),
                  VxBox(
                      child: Image.network("https://image.freepik.com/free-psd/smartphone-mockup-apps_23-2148080568.jpg")
                  ).width(context.screenWidth).height(context.screenHeight*0.5).make(),
                  VxBox(
                      child: Image.network("https://image.freepik.com/free-psd/app-interface-mock-up-phone-display_23-2148963434.jpg")
                  ).width(context.screenWidth).height(context.screenHeight*0.5).make(),
                  VxBox(
                      child: Image.network("https://image.freepik.com/free-vector/responsive-landing-page-with-faceless-man-working-laptop-3d-start-up-business-elements_1302-25858.jpg")
                  ).width(context.screenWidth).height(context.screenHeight*0.5).make()
                ])
          ],
        ),

      ),
    ).height(context.screenHeight*0.6).black.make();


  }
}
