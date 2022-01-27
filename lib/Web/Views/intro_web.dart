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



  Widget build(BuildContext context) {
    return VxBox(
      child: Container(
        key: widget.introKey,
        child: Wrap(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            VxBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    40.heightBox,
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

            Image.network(
                "https://image.freepik.com/free-photo/young-woman-smiling-posing_176474-95600.jpg"),
          ],
        ),
      ),
    ).height(context.screenHeight * 0.8).make();
  }
}
