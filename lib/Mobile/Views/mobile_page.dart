import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio_app_devfest_trail/Home/floatingActionButton.dart';
import 'package:portfolio_app_devfest_trail/Mobile/Views/contact_mobile.dart';
import 'package:portfolio_app_devfest_trail/Mobile/Views/project_mobile.dart';
import 'package:portfolio_app_devfest_trail/Mobile/Views/skills_mobile.dart';
import 'package:portfolio_app_devfest_trail/Mobile/Widgets/drawer_menu.dart';
import 'package:portfolio_app_devfest_trail/Mobile/Views/intro_mobile.dart';

import 'package:velocity_x/velocity_x.dart';

class MobilePage extends StatefulWidget {
  @override
  _MobilePageState createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  final aboutMeKey = new GlobalKey();
  final introKey = new GlobalKey();
  final projectKey = new GlobalKey();
  final contactKey = new GlobalKey();
  // late ScrollController _scrollController;
  // bool _isScrolled = false;

  // @override
  // void initState() {
  //   _scrollController = ScrollController();
  //     _scrollController.addListener(_listenToScrollChange);
  //   super.initState();
  // }

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
            children: [
              Row(
                children: [
                  Image.network(
                    "https://cdn-icons-png.flaticon.com/512/1157/1157109.png",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ).p4(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Maria").text.size(20).purple400.bold.make(),
                      Text("Full StackDeveloper").text.size(15).white.make()
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatWidget(),
      endDrawer: Drawer(
        child: Menu(aboutMeKey, introKey, projectKey, contactKey),
      ),
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
  // void _listenToScrollChange() {
  //   if (_scrollController.offset >= 50.0) {
  //     setState(() {
  //       _isScrolled = true;
  //     });
  //   } else {
  //     setState(() {
  //       _isScrolled = false;
  //     });
  //   }
  // }
}
