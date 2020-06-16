import 'package:flutter/material.dart';

var colorGreen = Color(0xFF32A060);
var colorWhite = Color(0xFFFFFFFF);
var colorDarkGreen = Color(0xFF279152);

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorGreen,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 32, 32, 10),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 5),
                    child: Text(
                      "Fiddle Leaf Fig Topiary",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 5, 30, 10),
                    child: Text(
                      "10\" Nusery Pot",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(30, 5, 30, 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "\$",
                            style: TextStyle(
                                color: colorDarkGreen,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                            width: 10,
                          ),
                          Text(
                            "85",
                            style: TextStyle(
                                color: colorDarkGreen,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ))
                ],
              ),
              decoration: BoxDecoration(
                color: colorWhite,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: colorDarkGreen,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
