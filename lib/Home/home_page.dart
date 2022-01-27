import 'package:flutter/material.dart';
import 'package:portfolio_app_devfest_trail/Mobile/Views/mobile_page.dart';
import 'package:portfolio_app_devfest_trail/Web/Views/web_page.dart';
import 'package:velocity_x/velocity_x.dart';
class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return

      VxDevice(
      mobile: MobilePage(),
      web: WebPage(),
    );
  }
}
