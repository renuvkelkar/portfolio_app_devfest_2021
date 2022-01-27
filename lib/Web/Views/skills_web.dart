import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Skills extends StatefulWidget {
  final dataKey;
  Skills(this.dataKey);



  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills>{


  @override
  Widget build(BuildContext context) {
    return

    VxBox(
      child:
      Container(
        key: widget.dataKey,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("< My Skills >").text.bold.xl6.size(20).gray800.make().p16(),
            50.heightBox,
            Container(
              height: 250,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  50.widthBox,

                  HoverCrossFadeWidget(
                    duration: Duration(milliseconds: 300),
                    firstChild:
                    VxBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Image.network("https://cdn-icons-png.flaticon.com/512/2452/2452499.png",height: context.screenHeight*0.1,width: context.screenWidth*0.1,fit: BoxFit.contain,),
                            20.heightBox,
                            Text("Mobile App Development").text.size(15).purple800.bold.makeCentered()
                          ],
                        )
                    ).white.height(250).width(250).roundedFull.makeCentered(),
                    secondChild:
                    VxBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            CircularPercentIndicator(
                              radius: 200.0,
                              lineWidth: 20.0,
                              animation: true,
                              percent: 0.9,
                              center: new Text(
                                "90.0%",
                                style:
                                new TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade800, fontSize: 30.0),
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Colors.deepPurple,
                            ),
                          ],
                        )
                    ).white.height(250).width(250).roundedFull.makeCentered(),

                  ),
                  50.widthBox,
                  HoverCrossFadeWidget(
                    duration: Duration(milliseconds: 300),
                    firstChild:
                    VxBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Image.network("https://cdn-icons-png.flaticon.com/512/1260/1260111.png",height: context.screenHeight*0.1,width: context.screenWidth*0.1,fit: BoxFit.contain,),

                            Text("UI/UX Designing").text.size(15).purple800.bold.makeCentered().p4()
                          ],
                        )
                    ).white.height(250).width(250).roundedFull.makeCentered(),
                    secondChild:
                    VxBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            CircularPercentIndicator(
                              radius: 200.0,
                              lineWidth: 20.0,
                              animation: true,
                              percent: 0.7,
                              center: new Text(
                                "70.0%",
                                style:
                                new TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade800, fontSize: 30.0),
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Colors.deepPurple,
                            ),
                          ],
                        )
                    ).white.height(250).width(250).roundedFull.makeCentered(),

                  ),
                  50.widthBox,
                  HoverCrossFadeWidget(
                    duration: Duration(milliseconds: 300),
                    firstChild:
                    VxBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Image.network("https://cdn-icons-png.flaticon.com/512/888/888991.png",height: context.screenHeight*0.1,width: context.screenWidth*0.1,fit: BoxFit.contain,),

                            Text("Web Development").text.size(15).purple800.bold.makeCentered().p4()
                          ],
                        )
                    ).white.height(250).width(250).roundedFull.makeCentered(),
                    secondChild:
                    VxBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            CircularPercentIndicator(
                              radius: 200.0,
                              lineWidth: 20.0,
                              animation: true,
                              percent: 0.85,
                              center: new Text(
                                "85.0%",
                                style:
                                new TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade800, fontSize: 30.0),
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Colors.deepPurple,
                            ),
                          ],
                        )
                    ).white.height(250).width(250).roundedFull.makeCentered(),

                  ),
                  50.widthBox,
                  HoverCrossFadeWidget(
                    duration: Duration(milliseconds: 300),
                    firstChild:
                    VxBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Image.network("https://cdn-icons-png.flaticon.com/512/1187/1187595.png",height: context.screenHeight*0.1,width: context.screenWidth*0.1,fit: BoxFit.contain,),

                            Text("Technical writing").text.size(15).purple800.bold.makeCentered().p4()
                          ],
                        )
                    ).white.height(250).width(250).roundedFull.makeCentered(),
                    secondChild:
                    VxBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            CircularPercentIndicator(
                              radius: 200.0,
                              lineWidth: 20.0,
                              animation: true,
                              percent: 0.5,
                              center: new Text(
                                "50.0%",
                                style:
                                new TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade800, fontSize: 30.0),
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Colors.deepPurple,
                            ),
                          ],
                        )
                    ).white.height(250).width(250).roundedFull.makeCentered(),

                  ),
                  50.widthBox,

                  HoverCrossFadeWidget(
                    duration: Duration(milliseconds: 300),
                    firstChild:
                    VxBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Image.network("https://cdn-icons-png.flaticon.com/512/3938/3938379.png",height: context.screenHeight*0.1,width: context.screenWidth*0.1,fit: BoxFit.contain,),

                            Text("Mentoring").text.size(15).purple800.bold.makeCentered().p4()
                          ],
                        )
                    ).white.height(250).width(250).roundedFull.makeCentered(),
                    secondChild:
                    VxBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            CircularPercentIndicator(
                              radius: 200.0,
                              lineWidth: 20.0,
                              animation: true,
                              percent: 0.7,
                              center: new Text(
                                "70.0%",
                                style:
                                new TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade800, fontSize: 30.0),
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Colors.deepPurple,
                            ),
                          ],
                        )
                    ).white.height(250).width(250).roundedFull.makeCentered(),

                  ),
                  50.widthBox,

                ],
              ),
            ),


          ],
        ),

      ),
    ).height(context.screenHeight*0.7).gray900.make();
  }
}
