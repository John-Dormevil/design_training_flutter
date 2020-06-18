import 'package:design_training/pages/greenery_app_design/example.dart';
import 'package:design_training/pages/greenery_app_design/pageone.dart';
import 'package:design_training/pages/pagetree.dart';
import 'package:design_training/pages/pagetwo.dart';
import 'package:design_training/pages/responsive_greenery_app/responsive_greenery.dart';
import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyPageViewState();
  }
}

class MyPageViewState extends State<MyPageView> {
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: <Widget>[
        ResponsiveGreeneryApp(),
        PageOne(),
        ExampleGreenApp(),
        PageTwo(),
        PageTree(),
      ],
    );
  }
}
