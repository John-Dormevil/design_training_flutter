import 'package:design_training/pages/greenery_app_design/example.dart';
import 'package:flutter/material.dart';

var colorGreen = Color(0xFF32A060);
var colorWhite = Color(0xFFFFFFFF);
var colorDarkGreen = Color(0xFF279152);

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: null,
      backgroundColor: colorGreen,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  child: Stack(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 32, 32, 10),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 20,
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
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 5, 30, 10),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 4.4, 0, 0),
                                  child: Text(
                                    "\$",
                                    style: TextStyle(
                                      color: colorDarkGreen,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "85",
                                  style: TextStyle(
                                      color: colorDarkGreen,
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 30,
                        right: 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: FlatButton(
                                padding: EdgeInsets.all(15),
                                onPressed: () {},
                                child: Icon(Icons.shopping_cart),
                                shape: CircleBorder(),
                                color: greenColor,
                                textColor: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 2,
                              width: MediaQuery.of(context).size.width / 2,
                              child: Image(
                                image: AssetImage("images/monstera_plant3.png"),
                              ),
                            ),
                          ],
                        ),
                      ),
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
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          height: 42,
                          width: 32,
                        ),
                        Text(
                          "Planting",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            color: darkGreenColor,
                            child: Text("250"),
                          ),
                        ),
                        SizedBox(),
                        Expanded(
                          child: Container(
                            width: 100,
                            color: darkGreenColor,
                            child: Text("18"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
