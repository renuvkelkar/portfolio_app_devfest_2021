import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio_app_devfest_trail/Home/floatingActionButton.dart';
import 'package:portfolio_app_devfest_trail/Web/Views/contact_web.dart';
import 'package:portfolio_app_devfest_trail/Web/Views/intro_web.dart';
import 'package:portfolio_app_devfest_trail/Web/Views/project_web.dart';
import 'package:portfolio_app_devfest_trail/Web/Views/skills_web.dart';
import 'package:velocity_x/velocity_x.dart';

class WebPage extends StatefulWidget {
  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  final aboutMeKey = new GlobalKey();
  final introKey = new GlobalKey();
  final projectKey = new GlobalKey();
  final contactKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    final targetContext = aboutMeKey.currentContext;
    final targetContext1 = introKey.currentContext;
    final targetContext2 = projectKey.currentContext;
    final targetContext3 = contactKey.currentContext;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Image.network(
                      "https://cdn-icons-png.flaticon.com/512/1157/1157109.png",
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Maria").text.size(20).purple400.bold.make(),
                        Text("Full StackDeveloper").text.size(15).white.make()
                      ],
                    )
                  ],
                ),
              ),
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HoverAnimatedContainer(
                    width: 80,
                    height: 50,
                    color: Colors.black,
                    hoverColor: Colors.deepPurpleAccent.shade100,
                    child: MaterialButton(
                        child: new Text("Home").text.xl.white.make(),
                        onPressed: () {
                         setState(() {
                           if (targetContext1 != null) {
                             Scrollable.ensureVisible(targetContext1,
                                 alignment: 0, duration: Duration(seconds: 1));
                           }

                         });
                        }),
                  ),
                  10.widthBox,
                  HoverAnimatedContainer(
                    height: 50,
                    color: Colors.black,
                    hoverColor: Colors.deepPurpleAccent.shade100,
                    child: MaterialButton(
                        child: new Text("Projects").text.xl.white.make(),
                        onPressed: () {
                         setState(() {
                           if (targetContext2 != null) {
                             Scrollable.ensureVisible(targetContext2,
                                 alignment: 0, duration: Duration(seconds: 1));
                           }
                         });
                        }),
                  ),
                  10.widthBox,
                  HoverAnimatedContainer(
                    height: 50,
                    color: Colors.black,
                    hoverColor: Colors.deepPurpleAccent.shade100,
                    child: MaterialButton(
                        child: new Text("About Me").text.xl.white.make(),
                        onPressed: () {
                         setState(() {
                           if (targetContext != null) {
                             Scrollable.ensureVisible(targetContext,
                                 alignment: 0, duration: Duration(seconds: 1));
                           }
                         });
                        }),
                  ),
                  10.widthBox,
                  HoverAnimatedContainer(
                    height: 50,
                    color: Colors.black,
                    hoverColor: Colors.deepPurpleAccent.shade100,
                    child: MaterialButton(
                        child: new Text("Contact").text.xl.white.make(),
                        onPressed: () {
                         setState(() {
                           if (targetContext3 != null) {
                             Scrollable.ensureVisible(targetContext3,
                                 alignment: 0, duration: Duration(seconds: 1));
                           }
                         });
                        }),
                  ),
                  10.widthBox,
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Intro(introKey),
            Project(projectKey),
            Skills(aboutMeKey),
             ContactMe(contactKey)
          ],
        ),
      ),
    );
  }

}


