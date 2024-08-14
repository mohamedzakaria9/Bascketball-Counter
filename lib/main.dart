import 'package:flutter/material.dart';

void main() {
  runApp(PointCounter());
}

class PointCounter extends StatefulWidget {
  @override
  State<PointCounter> createState() => _PointCounterState();
}

class _PointCounterState extends State<PointCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(
            "Point Counter",
            style: TextStyle(color: Color(0xff000000)),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "$teamAPoints",
                      style: TextStyle(fontSize: 130),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 1;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints+=3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
                SizedBox(
                    height: 370,
                    child: VerticalDivider(
                      color: Colors.grey,
                    )),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "$teamBPoints",
                      style: TextStyle(fontSize: 130),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 1;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints+=3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: Text("Reset", style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                  backgroundColor: Colors.cyan,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            )
          ],
        ),
      ),
    );
  }
}
/*
* reminder to change spacer to sizedbox witget
* */
