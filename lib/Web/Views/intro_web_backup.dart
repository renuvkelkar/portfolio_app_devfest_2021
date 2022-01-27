import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:velocity_x/velocity_x.dart';
class Intro extends StatefulWidget {
  final introKey;
  Intro(this.introKey);


  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro>  with SingleTickerProviderStateMixin{

  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
    AnimationController(duration: Duration(seconds: 15), vsync: this)
      ..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  Widget build(BuildContext context) {
    return VxBox(
      child: Container(
        key: widget.introKey,
        child: Stack(
          children: [
            VxBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        VxBox().gray800.make(),
                        Image.network(
                            "https://cdn-icons-png.flaticon.com/512/724/724927.png")
                            .opacity(value: 0.1)
                            .positioned(bottom: 0),
                      ],
                    ),
                    VxBox().black.make()
                  ],
                )).make(),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VxBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "<b>"
                            .richText
                            .withTextSpanChildren([
                          "Hello".textSpan.white.bold.size(30).make(),
                          "</b>".textSpan.purple400.bold.make(),
                          "\nI'M Maria,".textSpan.purple400.bold.make(),
                          // "Flutter".textSpan.white.size(25).bold.make(),
                          // "\nDeveloper".textSpan.wider.white.bold.make()
                        ])
                            .purple400
                            .xl6
                            .size(25)
                            .bold
                            .make()
                            .p8(),

                        SizedBox(
                          width: context.screenWidth*0.5,
                          child: DefaultTextStyle(
                            style: const TextStyle(
                                fontSize: 70.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                FadeAnimatedText('Full StackDeveloper'),
                                FadeAnimatedText('YouTuber'),
                                FadeAnimatedText('Blogger'),
                                FadeAnimatedText('Designer'),
                                FadeAnimatedText('Mentor'),
                              ],
                              onTap: () {
                                print("Tap Event");
                              },
                            ),
                          ),
                        ),


                      ],
                    )).width(context.screenWidth * 0.5).make().px16(),
                Container(
                  child: Stack(
                    children: [
                      RotationTransition(
                        alignment: Alignment.center,
                        turns: _controller,
                        child: VxBox(


                        ).height(300).width(300).purple400.makeCentered(),
                      ),
                      // CircleAvatar(
                      //   foregroundColor: Colors.deepPurpleAccent.shade400,
                      //   radius: 130,
                      //
                      //   foregroundImage: NetworkImage("https://image.freepik.com/free-photo/portrait-photo_144627-46580.jpg"),
                      // ).pOnly(top: 150,left: 20),

                    ],
                  ),
                ),
                // RotationTransition(
                //   alignment: Alignment.center,
                //   turns: _controller,
                //   child: VxBox(
                //       child: Image.asset("assets/images/paneer.png",height: context.screenHeight*0.5,width: context.screenWidth*0.3,fit: BoxFit.cover,)
                //   ).make().pOnly(left: 30),
                // ),

                // CircleAvatar(
                //   foregroundColor: Colors.deepPurpleAccent.shade400,
                //   radius: 80,
                //
                //   foregroundImage: NetworkImage("https://image.freepik.com/free-photo/portrait-photo_144627-46580.jpg"),
                //    ),
                // Image.network(
                //     "https://image.freepik.com/free-photo/young-woman-smiling-posing_176474-95600.jpg"),
              ],
            ),
          ],
        ),
      ),
    ).height(context.screenHeight * 0.8).make();
  }
}
