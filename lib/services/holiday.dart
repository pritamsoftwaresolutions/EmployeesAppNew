import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Holiday extends StatefulWidget {
  @override
  _HolidayState createState() => _HolidayState();

//   @override
// ToBeDeliver createState() {
//   return new ToBeDeliver();
// }
}

class _HolidayState extends State<Holiday> {
  bool _color;

  @override
  void initState() {
    super.initState();
    _color = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ////////////////////////////////////////////////////////////////////////
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 65.0,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Icon(FontAwesomeIcons.calendarAlt, size: 15),
                        ),
                        Text(
                          "19 march",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.userAlt, size: 15),
                        Text(
                          "100",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Text(
                          "1500L C",
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Text(
                          "    500L B   ",
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   width: 65.0,
                  //   child: RaisedButton(
                  //       child: Padding(
                  //         padding: const EdgeInsets.all(0.0),
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //             Text(
                  //               'ALL',
                  //               textAlign: TextAlign.center,
                  //               style: TextStyle(
                  //                   fontSize: 10,
                  //                   color: Colors.white,
                  //                   fontWeight: FontWeight.bold),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(10.0),
                  //           side: BorderSide(color: Colors.lightBlue)),
                  //       color: Colors.blue,
                  //       onPressed: () {}),
                  // ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 25,
                  )
                ],
              ),
              // color: Colors.white,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Card(
              color: _color ? Colors.blue : Colors.red,
              child: ListTile(
                onTap: () {
                  setState(() {
                    _color = !_color;
                  });
                },
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bhau Kadam',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      '9876543210',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '204, Ram Building, Lane No-6',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      '2L ',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
      backgroundColor: CupertinoColors.systemYellow,
      ////////////////////////////////////////////////////////////////////////////////////////////
    );
  }
}

// class Screen1 extends StatefulWidget {
// @override
// Screen1State createState() {
//   return new Screen1State();
// }
// // }

// class Screen1State extends State<Screen1> {
//   bool _color;

// @override
// void initState() {
//   super.initState();
//   _color = true;
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       // child: Card(
//       //   color: _color ? Colors.green : Colors.red,
//       //   child: ListTile(
//       //     onTap: () {
//       //       setState(() {
//       //         _color = !_color;
//       //       });
//       //     },
//       //     title: Row(
//       //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //       children: [
//       //         Text(
//       //           'Bhau Kadam',
//       //           style: TextStyle(color: Colors.black),
//       //         ),
//       //         Text(
//       //           '9876543210',
//       //           style: TextStyle(color: Colors.black),
//       //         ),
//       //       ],
//       //     ),
//       //     subtitle: Row(
//       //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //       children: [
//       //         Text(
//       //           '204, Ram Building, Lane No-6',
//       //           style: TextStyle(color: Colors.black),
//       //         ),
//       //         Text(
//       //           '2L ',
//       //           style: TextStyle(color: Colors.black),
//       //         ),
//       //       ],
//       //     ),
//       //   ),
//       // ),
//     ));
//   }
// }
/////////////////////
///
///////
///???????
///
///
///?????????????
///////////////////////
