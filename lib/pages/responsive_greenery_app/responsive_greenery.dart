import 'dart:ui';

import 'package:design_training/pages/greenery_app_design/example.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var colorGreen = Color(0xFF32A060);
var colorDarkGreen = Color(0xFF279152);
var screenWidth;
var screenHeight;
var textNumberStyle = GoogleFonts.abrilFatface();

class ResponsiveGreeneryApp extends StatelessWidget {
  double sh(double factor) {
    return screenHeight * factor;
  }

  double sw(double factor) {
    return screenWidth * factor;
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: colorGreen,
          height: screenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: sh(0.724),
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(sw(0.09)),
                      width: screenWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment(-1.1, -2),
                              child: Icon(Icons.arrow_back),
                            ),
                          ),
                          Container(
                            width: sw(.8),
                            margin:
                                EdgeInsets.fromLTRB(0, sh(.035), 0, sh(0.02)),
                            child: Text(
                              "Fiddle Leaf Fig Topiary",
                              style: TextStyle(
                                fontSize: sh(0.05),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: sw(.6),
                            child: Text(
                              "10\" Nusery Pot",
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: sh(.02),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            width: sw(.6),
                            margin: EdgeInsets.fromLTRB(0, sh(0.016), 0, 0),
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: darkGreenColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: sh(.068)),
                                children: [
                                  TextSpan(
                                    text: "\$ ",
                                    style: TextStyle(fontSize: sh(.038)),
                                  ),
                                  TextSpan(text: "85"),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: sh(.07),
                      left: sw(.068),
                      child: FlatButton(
                        padding: EdgeInsets.all(sw(.048)),
                        color: darkGreenColor,
                        shape: CircleBorder(),
                        onPressed: () {},
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: sh(.07),
                      right: 0,
                      child: Image(
                          width: sw(.48),
                          image: AssetImage("images/monstera_plant3.png")),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(sw(.12), sw(.05), sw(0), sw(.04)),
                child: Text(
                  "Planting",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: sh(.022),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: sw(.1),
                    ),
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: darkGreenColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(sw(.06)),
                            topRight: Radius.circular(sw(.06)),
                          ),
                        ),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: sh(.05),
                              ),
                              children: [
                                TextSpan(
                                  text: "250",
                                  style: textNumberStyle,
                                ),
                                TextSpan(
                                  text: "  ml",
                                  style: TextStyle(
                                    fontSize: sh(.02),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                TextSpan(
                                  text: "\nWater",
                                  style: TextStyle(
                                    fontSize: sh(.02),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: sw(.06),
                    ),
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: darkGreenColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(sw(.06)),
                            topRight: Radius.circular(sw(.06)),
                          ),
                        ),
                        child: Center(
                          child: RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              style: TextStyle(fontSize: sh(.05)),
                              children: [
                                TextSpan(
                                  text: "18",
                                  style: textNumberStyle,
                                ),
                                TextSpan(
                                  text: "  °c",
                                  style: TextStyle(
                                    fontSize: sh(.02),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                TextSpan(
                                  text: "\nSunshine",
                                  style: TextStyle(
                                    fontSize: sh(.02),
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: sw(.1),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
