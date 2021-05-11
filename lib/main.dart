import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Color(0xFF2E2E3D),
              body: Container(
                //color: Colors.amberAccent,
                margin: EdgeInsets.all(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 50,
                              ),
                              onPressed: () {}),
                          Container(
                            margin: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "Aqua Tech",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20, bottom: 20),
                                  child: Text(
                                    "Water Consumption Statistics",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.settings,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {})
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.all(20),
                        child: Stack(
                          children: [
                            Container(
                              height: 350,
                              width: 400,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF373747),
                              ),
                              child: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Container(
                                    width: 350,
                                    height: 350,
                                    child: DoubleCircularSlider(
                                      300,
                                      0,
                                      20,
                                      baseColor: Color(0xFFC168E5),
                                      selectionColor: Colors.blue,
                                      handlerColor: Colors.blue,
                                      handlerOutterRadius: 15.0,
                                      sliderStrokeWidth: 15.0,
                                    ),
                                  ),
                                  Container(
                                      height: 250,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF434359),
                                          shape: BoxShape.circle),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "1000",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 50),
                                          ),
                                          Text(
                                            "Consumption Level",
                                            style: TextStyle(
                                                color: Color(0xFF69697D),
                                                fontSize: 20),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ],
                        )),
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ),
                        Text(
                          "pH",
                          style: TextStyle(
                            color: Color(0xFF69697D),
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  "4",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 40),
                                ),
                                Text(
                                  "No. of. People",
                                  style: TextStyle(
                                      color: Color(0xFF69697D), fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  "2:30 AM",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 40),
                                ),
                                Text(
                                  "Time",
                                  style: TextStyle(
                                      color: Color(0xFF69697D), fontSize: 20),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Color(0xFF49495F),
                                  shape: BoxShape.circle),
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  shape: BoxShape.circle),
                            ),
                            IconButton(
                                icon: Icon(Icons.power_settings_new,
                                    color: Colors.white),
                                onPressed: () {})
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}
