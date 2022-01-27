import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final aboutMeKey, introKey, projectKey, contactKey;
  Menu(this.aboutMeKey, this.introKey, this.projectKey, this.contactKey);

  @override
  Widget build(BuildContext context) {
    final targetContext = this.aboutMeKey.currentContext;
    final targetContext1 = this.introKey.currentContext;
    final targetContext2 = this.projectKey.currentContext;
    final targetContext3 = this.contactKey.currentContext;

    return Container(
      color: Colors.grey.shade900,
      child: ListView(children: [
        Container(
          child: Column(
            children: [
              MaterialButton(
                  child: ListTile(
                    title: Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    if (targetContext1 != null) {
                      Scrollable.ensureVisible(targetContext1,
                          alignment: 0, duration: Duration(seconds: 1));
                    }
                  }),
              MaterialButton(
                  onPressed: () {
                    if (targetContext != null) {
                      Scrollable.ensureVisible(targetContext,
                          alignment: 0, duration: Duration(seconds: 1));
                    }
                  },
                  child: ListTile(
                    title: Text(
                      "Projects",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              MaterialButton(
                  onPressed: () {
                    if (targetContext2 != null) {
                      Scrollable.ensureVisible(targetContext2,
                          alignment: 0, duration: Duration(seconds: 1));
                    }
                  },
                  child: ListTile(
                    title: Text(
                      "Skills",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              MaterialButton(
                  onPressed: () {
                    if (targetContext3 != null) {
                      Scrollable.ensureVisible(targetContext3,
                          alignment: 0, duration: Duration(seconds: 1));
                    }
                  },
                  child: ListTile(
                    title: Text(
                      "Contact Me",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
