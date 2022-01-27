import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ContactMe extends StatefulWidget {
  final contactKey;
  ContactMe(this.contactKey);



  @override
  _ContactMeState createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe>{


  @override
  Widget build(BuildContext context) {
    return
    VxBox(
      child:
      Container(
        key: widget.contactKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("< Contact Me >").text.bold.xl6.size(18).gray800.make(),


            VxBox(
                child: Column(
                  children: [

                    VxBox(
                      child: Lottie.network(
                        'https://assets8.lottiefiles.com/packages/lf20_6ucq5rzc.json',

                      ),
                    ).height(context.screenHeight*0.5).width(context.screenWidth).make(),
                    VxBox(
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.place,color: Colors.deepPurpleAccent,size: 50,),
                                Text(" : Harrow,London").text.white.xl4.make()
                              ],
                            ).p16(),
                            Row(
                              children: [
                                Icon(Icons.phone,color: Colors.deepPurpleAccent,size: 50,),
                                Text(" : +44 7464746089").text.white.xl4.make()
                              ],
                            ).p16(),
                            Row(
                              children: [
                                Icon(Icons.email,color: Colors.deepPurpleAccent,size: 50,),
                                Text(" : Maria@gmail.com").text.white.xl4.make()
                              ],
                            ).p16(),
                          ],
                        )
                    ).gray600.width(context.screenWidth).make()
                  ],
                )

            ).width(context.screenWidth).make().p4()

          ],
        ),

      ),
    ).gray900.make()
      ;
  }
}
