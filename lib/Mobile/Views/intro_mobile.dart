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

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Container(
        key: widget.introKey,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              "https://image.freepik.com/free-photo/young-woman-smiling-posing_176474-95600.jpg",height: context.screenHeight*0.5,width: context.screenWidth,fit: BoxFit.cover,),
            VxBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    "<b>"
                        .richText
                        .withTextSpanChildren([
                      "Hello".textSpan.white.bold.size(15).make(),
                      "</b>".textSpan.purple400.bold.make(),
                      "\nI'M Maria,".textSpan.purple400.bold.make(),
                      // "Flutter".textSpan.white.size(25).bold.make(),
                      // "\nDeveloper".textSpan.wider.white.bold.make()
                    ])
                        .purple400
                        .xl6
                        .size(20)
                        .bold
                        .make()
                        .p8(),

                    SizedBox(
                      width: context.screenWidth,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                            fontSize: 45.0,
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
                    ).pOnly(left: 30),


                  ],
                )).width(context.screenWidth).makeCentered(),


          ],
        ),
      ),
    ).height(context.screenHeight ).make();
  }
}
