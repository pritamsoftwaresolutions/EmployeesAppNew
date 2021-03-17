import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import '../RestServices/RestApiServices.dart';
import '../Services/DailyDeliveryList.dart';
import '../Entity/DailyDelivery.dart';
// import '../services/DoneDelivery.dart';

class DailyListPage extends StatefulWidget {
  //final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  final DailyDeliveryList dailyDeliveryList5;

  static DailyDeliveryList dailyDeliveryList8;

  DailyListPage({this.dailyDeliveryList5});

  //DailyListPage({Key key}) : super(key: key);

  @override
  DailyListPage1 createState() {
    dailyDeliveryList8 = this.dailyDeliveryList5;
    print(DailyListPage.dailyDeliveryList8.dailyDelivery.length);
    return DailyListPage1();
  }
}

class DailyListPage1 extends State<DailyListPage> {
  bool _color;
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

//  final List<DailyDelivery> items = DailyListPage.dailyDeliveryList8.dailyDelivery;
  @override
  void initState() {
    super.initState();
    _color = true;
  }

  @override
  Widget build(BuildContext context) {
    final title = 'Dismissing Items';
    final title1 = 'Kalyani Nagar';
    final data = MediaQuery.of(context);

    print('in build ********* ');
    print(DailyListPage.dailyDeliveryList8.dailyDelivery.length);
    DailyListPage.dailyDeliveryList8.dailyDelivery
        .forEach((l) => print("Employee #${l.id} has ${l.status} "));
    Iterator<DailyDelivery> listIterator =
        DailyListPage.dailyDeliveryList8.dailyDelivery.iterator;
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title1,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
        ////////////////////////////////////////////////////////////////////////

        body: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 65.0,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        " 16/03/2021",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Text(
                            "1500L +",
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
                            " 500L",
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
              height: 10,
            ),
            Expanded(
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: ListView.builder(
                      itemCount:
                          DailyListPage.dailyDeliveryList8.dailyDelivery.length,
                      // itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        //  DailyDelivery dd = items[index];

                        listIterator.moveNext();
                        DailyDelivery ee = listIterator.current;
                        print(ee.status);
                        return Dismissible(
                          // Each Dismissible must contain a Key. Keys allow Flutter to
                          // uniquely identify widgets.
                          // key: Key(dd.empId),
                          key: Key(item),
                          // Provide a function that tells the app
                          // what to do after an item has been swiped away.

                          onDismissed: (direction) {
                            // Remove the item from the data source.

                            // Then show a snackbar.
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Customer dismissed"),
                                // action: SnackBarAction(
                                //     label: "Undo",
                                //     onPressed: () {
                                //       _tasks.insert(index, item);
                                //       setState(() {});
                                //     })
                              ),
                            );
                          },
                          // Show a red background as the item is swiped away.
                          background: Container(color: Colors.red),
                          child: SizedBox(
                            child: Card(
                              color: _color ? Colors.blue : Colors.red,
                              child: ListTile(
                                onTap: () {
                                  setState(() {
                                    _color = !_color;
                                  });
                                },
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                      child: Text(
                                        'Bhau Kadam',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                      child: Text(
                                        '9876543210',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                subtitle: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                      child: Text(
                                        '204, Ram Building, Lane No-6',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                      child: Text(
                                        '2L ',
                                        style: TextStyle(color: Colors.orange),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
///////////////////////////////////////////////////////////////////////////////
                          ///old cod for customr list
/////
                          // child: Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     new SizedBox(
                          //       // width: data.size.width / 1.15,
                          //       width: data.size.width / 1.02,
                          //       height: data.size.height / 10.2,
                          //       child: RaisedButton(
                          //         onPressed: () {
                          //           // Navigator.push(
                          //           //     context,
                          //           //     MaterialPageRoute(
                          //           //         builder: (context) => Screen1()));
                          //         },
                          //         // child: Padding(
                          //         //   padding: const EdgeInsets.all(0.0),
                          //         //   child: Column(
                          //         //     mainAxisAlignment:
                          //         //         MainAxisAlignment.center,
                          //         //     crossAxisAlignment:
                          //         //         CrossAxisAlignment.stretch,
                          //         //     children: [
                          //         //       Padding(
                          //         //         padding: const EdgeInsets.all(0.0),
                          //         //         child: Row(
                          //         //           mainAxisAlignment:
                          //         //               MainAxisAlignment.spaceBetween,
                          //         //           children: [
                          //         //             Text('${ee.id}: Abhijit Kadam',
                          //         //                 // '  : ${ee.id}  ',
                          //         //                 style: TextStyle(
                          //         //                     fontSize: 12.5,
                          //         //                     color: Colors.blue,
                          //         //                     fontWeight:
                          //         //                         FontWeight.normal)),
                          //         //             Text('9876543210',
                          //         //                 style: TextStyle(
                          //         //                     fontSize: 12.5,
                          //         //                     color: Colors.blue,
                          //         //                     fontWeight:
                          //         //                         FontWeight.normal)),
                          //         //           ],
                          //         //         ),
                          //         //       ),
                          //         //       SizedBox(
                          //         //         height: 18,
                          //         //       ),
                          //         //       Padding(
                          //         //         padding: const EdgeInsets.all(0.0),
                          //         //         child: Row(
                          //         //           mainAxisAlignment:
                          //         //               MainAxisAlignment.spaceBetween,
                          //         //           children: [
                          //         //             Text(
                          //         //                 '${ee.routeDeliveryId}: 204, Tupe Buiding, D-6 Lane',
                          //         //                 style: TextStyle(
                          //         //                     fontSize: 12.5,
                          //         //                     color: Colors.blue,
                          //         //                     fontWeight:
                          //         //                         FontWeight.normal)),
                          //         //             Text('${ee.status}: 2L Cow',
                          //         //                 style: TextStyle(
                          //         //                     fontSize: 12.5,
                          //         //                     color: Colors.orange,
                          //         //                     fontWeight:
                          //         //                         FontWeight.normal)),
                          //         //           ],
                          //         //         ),
                          //         //       ),
                          //         //     ],
                          //         //   ),
                          //         // ),

                          //         color: Colors.white,
                          //       ),
                          //     ),
                          //     // SizedBox(
                          //     //   height: data.size.height / 10.2,
                          //     //   width: 40,
                          //     //   child: RaisedButton(
                          //     //       child: Padding(
                          //     //         padding: const EdgeInsets.all(0.0),
                          //     //         child: Column(
                          //     //           mainAxisAlignment:
                          //     //               MainAxisAlignment.center,
                          //     //           children: [
                          //     //             Text(
                          //     //               'D',
                          //     //               textAlign: TextAlign.center,
                          //     //               style: TextStyle(
                          //     //                   fontSize: 10,
                          //     //                   color: Colors.white,
                          //     //                   fontWeight: FontWeight.bold),
                          //     //             ),
                          //     //           ],
                          //     //         ),
                          //     //       ),
                          //     //       //  color: Colors.white,
                          //     //       shape: RoundedRectangleBorder(
                          //     //           // borderRadius: BorderRadius.circular(10.0),
                          //     //           side: BorderSide(
                          //     //               color: Colors.lightBlue)),
                          //     //       color: Colors.blue,
                          //     //       onPressed: () async {
                          //     //         print('FIrst First');
                          //     //         DailyDeliveryList dailyDeliveryList1 =
                          //     //             await RestApiServices()
                          //     //                 .getAllDailyDeliveryRest();

                          //     //         print(77);
                          //     //         dailyDeliveryList1.dailyDelivery.forEach(
                          //     //             (l) => print(
                          //     //                 "Employee #${l.id} has ${l.status} "));
                          //     //         print(dailyDeliveryList1);
                          //     //       }),
                          //     // ),

                          //     // SizedBox(
                          //     //   width: 40,
                          //     //   height: data.size.height / 10.2,
                          //     //   child: RaisedButton(
                          //     //     child: Text(
                          //     //       "D",
                          //     //       textAlign: TextAlign.center,
                          //     //     ),
                          //     //     color: Colors.white,
                          //     //     highlightColor: Colors.green,
                          //     //     onPressed: () {
                          //     //       // Navigator.push(
                          //     //       //     context,
                          //     //       //     MaterialPageRoute(
                          //     //       //         builder: (context) => Screen1()));
                          //     //     },
                          //     //   ),
                          //     // ),
                          //   ],
                          // ),
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                          // Future<void> showAlertDialog () async {
                          //   return showDialog(
                          //     context: context,
                          //     barrierDismissible: true,
                          //     builder: (context) {
                          //       return AlertDialog(
                          //         title: Text("Alert"),
                          //         content: Text("s"),
                          //       )

                          //     }

                          //     ),
                          // },

                          //   ],
                          // ),
                          // ),
                        );
                      }),
                ),
              ),
            ),
          ],
        )

///////////////////////////////////////////////////////////

///////////////////////
            ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     // Navigator.push(context,
        //     //     MaterialPageRoute(builder: (context) => DoneDelivery()));
        //   },
        //   child: Icon(Icons.done),
        //   backgroundColor: Colors.blue,
        // ),
      ),
    );
  }
}

//////////////////
// class Screen1 extends StatefulWidget {
//   @override
//   Screen1State createState() {
//     return new Screen1State();
//   }
// }

// class Screen1State extends State<Screen1> {
//   bool _color;

//   @override
//   void initState() {
//     super.initState();
//     _color = true;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: Card(
//         color: _color ? Colors.green : Colors.red,
//         child: ListTile(
//           onTap: () {
//             setState(() {
//               _color = !_color;
//             });
//           },
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Bhau Kadam',
//                 style: TextStyle(color: Colors.black),
//               ),
//               Text(
//                 '9876543210',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ],
//           ),
//           subtitle: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 '204, Ram Building, Lane No-6',
//                 style: TextStyle(color: Colors.black),
//               ),
//               Text(
//                 '2L ',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }
///////////////////////////////////////
///
///
///
//////////////////////////////////////
