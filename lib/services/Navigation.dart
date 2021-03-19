// import 'package:employeesapp/services/DailyListPage.dart';

import 'package:employeesapp/main.dart';
import 'package:flutter/material.dart';
import 'ToBeDeliver.dart';
import 'Delivered.dart';
import 'holiday.dart';
import 'MyAccount.dart';
import 'History.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;

  var dailyDeliveryList5;
  Widget callPage(int currentIndex) {
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
    return MaterialApp(
      // title: "Navigation",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Kalyani Nagar"),
        ),
        body: callPage(_currentIndex),
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
