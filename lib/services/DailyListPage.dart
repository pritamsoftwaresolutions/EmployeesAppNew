import 'package:employeesapp/main.dart';
import 'package:employeesapp/services/Delivered.dart';
import 'package:employeesapp/services/History.dart';
import 'package:employeesapp/services/MyAccount.dart';
import 'package:employeesapp/services/ToBeDeliver.dart';
import 'package:employeesapp/services/holiday.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
 // final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  final List<DailyDelivery> items = DailyListPage.dailyDeliveryList8.dailyDelivery;
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _color = true;
  }

  Widget callPage(int currentIndex) {
    print('KKKKKKKK : ');
    print(currentIndex);
    switch (currentIndex) {
      case 0:
        return ToBeDeliver();
      case 1:

        return Delivered();
      case 2:

        return Holiday();
        break;
      default:
        return ToBeDeliver();
    }
  }

  @override
  Widget build(BuildContext context) {
    final title = 'Dismissing Items';
    final title1 = 'Kalyani Nagar';
    final data = MediaQuery.of(context);






    print('in build ********* ');
    print(DailyListPage.dailyDeliveryList8.dailyDelivery.length);

    DailyListPage.dailyDeliveryList8.dailyDelivery
        .forEach((l) => print("Employee #${l.id} has ${l.customerName} "));
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
        body:  callPage(_currentIndex),
        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (value) {
              _currentIndex = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), title: Text("To Be Deliver")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt), title: Text("Delivered")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.beach_access), title: Text("Holidays")),
            ]),

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            width: 75.0,
                            height: 75.0,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/images/final_app_icon.png'),
                            ),
                          ),
                        ),
                        //SizedBox(height: 2.0),

                        Text('Raju Kumar'),
                        Text('9876543210'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My Account'),
              subtitle: Text('Profile'),
              trailing: Icon(Icons.edit),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyAccount()));
                //Navigator.of(context).pushNamed(MyAccount.routeName);
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('History'),
              //.tr(),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => History()));
                //Navigator.of(context).pushNamed(MyAccount.routeName);
              },
            ),
            ListTile(
              leading: Icon(Icons.language_sharp),
              title: Text('Change Language'),
              //.tr(),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Language()));
                //Navigator.of(context).pushNamed(MyAccount.routeName);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_support),
              title: Text('Contact Us'),
              //.tr(),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ContactUs()));
              },
            ),
            ListTile(
              leading: Icon(Icons.policy_outlined),
              title: Text('Legal Policy'),
              //.tr(),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => LegalPolicies()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              //.tr(),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
        )),
      ),
    );
  }
}

//////////////////
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
