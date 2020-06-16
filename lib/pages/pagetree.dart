import 'package:flutter/material.dart';

class PageTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Text("data 3"),
      ),
    );
  }
}
