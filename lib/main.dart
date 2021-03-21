import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff34636d),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Round 1",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new LinearPercentIndicator(
                  width: 100.0,
                  lineHeight: 14.0,
                  percent: 0.25,
                  backgroundColor: Color(0xff5197a5),
                  progressColor: Color(0xff203e44),
                ),
              ],
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                child: FortuneWheel(
                  // changing the return animation when the user stops dragging
                  physics: CircularPanPhysics(
                    duration: Duration(seconds: 5),
                    curve: Curves.decelerate,
                  ),
                  onFling: () {
                    selected = 2;
                  },
                  selected: selected,
                  items: [
                    FortuneItem(
                      child: Container(
                        height: 40,
                        width: 150,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage('images/1.jpg'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Color(0xff294d55),
                                  border: Border.all(color: Colors.blueAccent)),
                              child: Column(
                                children: [
                                  Text(
                                    'Han Solo',
                                  ),
                                  Text(
                                    'Han Solo',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    FortuneItem(
                        child: Container(
                      height: 40,
                      width: 150,
                      // color: Colors.red,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('images/2.jpg'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            decoration: BoxDecoration(
                                color: Color(0xff294d55),
                                border: Border.all(color: Colors.blueAccent)),
                            child: Column(
                              children: [
                                Text(
                                  'Han Solo',
                                ),
                                Text(
                                  'Han Solo',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                    FortuneItem(
                        child: Container(
                      height: 40,
                      width: 150,
                      // color: Colors.red,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('images/3.jpeg'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            decoration: BoxDecoration(
                                color: Color(0xff294d55),
                                border: Border.all(color: Colors.blueAccent)),
                            child: Column(
                              children: [
                                Text(
                                  'Han Solo',
                                ),
                                Text(
                                  'Han Solo',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                    FortuneItem(
                        child: Container(
                      height: 40,
                      width: 150,
                      // color: Colors.red,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('images/4.jpeg'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            decoration: BoxDecoration(
                                color: Color(0xff294d55),
                                border: Border.all(color: Colors.blueAccent)),
                            child: Column(
                              children: [
                                Text(
                                  'Han Solo',
                                ),
                                Text(
                                  'Han Solo',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                    FortuneItem(
                        child: Container(
                      height: 40,
                      width: 150,
                      // color: Colors.red,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('images/5.jpg'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            decoration: BoxDecoration(
                                color: Color(0xff294d55),
                                border: Border.all(color: Colors.blueAccent)),
                            child: Column(
                              children: [
                                Text(
                                  'Han Solo',
                                ),
                                Text(
                                  'Han Solo',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                  ],
                )
                //     FortuneWheel(
                //   selected: 0,
                //   items: [
                //     FortuneItem(
                //       child: Container(
                //         height: 20,
                //         width: 20,
                //         color: Colors.blue,
                //         // style: TextStyle(color: Colors.red),
                //       ),
                //       style: FortuneItemStyle(
                //         color: Colors.red, // <-- custom circle slice fill color
                //         borderColor:
                //             Colors.green, // <-- custom circle slice stroke color
                //         borderWidth: 3, // <-- custom circle slice stroke width
                //       ),
                //     ),
                //     // FortuneItem(child: Text('B')),
                //     // FortuneItem(child: Text('B')),
                //   ],
                // )
                ),
            SizedBox(
              height: 10,
            ),
            Text(
              "choose the category for round 1",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
