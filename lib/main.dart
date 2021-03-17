// import 'package:flutter/material.dart';
// // import 'List1.dart';
// import 'package:http/http.dart' as http;
// import 'dart:async';
// import 'dart:convert';
// import 'services/loginService.dart';
// import 'services/DailyListPage.dart';
// import 'RestServices/RestApiServices.dart';
// import 'Services/DailyDeliveryList.dart';
// import 'Entity/DailyDelivery.dart';

import 'package:flutter/material.dart';
// import 'List1.dart';
// import 'package:http/http.dart' as http;
// import 'dart:async';
// import 'dart:convert';
// import 'services/loginService.dart';
import 'services/DailyListPage.dart';
import 'RestServices/RestApiServices.dart';
import 'Services/DailyDeliveryList.dart';
// import 'Entity/DailyDelivery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // supportedLocales: context.supportedLocales,
      // localizationsDelegates: context.localizationDelegates,
      title: 'Employees App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _username, _password;
  final userNameController = TextEditingController();

  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void loginCall() async {
    String username1 = userNameController.text;
    String pwd = passwordController.text;
    print('VALID LOGIN  222 ');

    var flag = await RestApiServices().loginRestService(username1, pwd);
    DailyDeliveryList dailyDeliveryList5 =
        await RestApiServices().getAllDailyDeliveryRest();
    print('VALID LOGIN  333 ');
    print(dailyDeliveryList5.dailyDelivery.length);
    if (flag == true) {
      print('VALID LOGIN');
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  DailyListPage(dailyDeliveryList5: dailyDeliveryList5)));
    } else {
      print('INVALID LOGIN');

      //  print('call  444444');
    }
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Khalsa Employees App",
        ),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: data.size.width,
              height: data.size.height / 4,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/final_app_icon.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: data.size.width,
              // height: data.size.height,
              child: Container(
                child: ListView(shrinkWrap: true, children: <Widget>[
                  Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(children: <Widget>[
                          TextFormField(
                            controller: userNameController,
                            decoration: InputDecoration(
                                hintText: "Enter Username",
                                labelText: "Username"),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter Username ';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Enter Password",
                                labelText: "Password"),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter Password ';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Validate returns true if the form is valid, or false
                              // otherwise.
                              if (_formKey.currentState.validate()) {
                                loginCall();
                              }
                            },
                            child: Text('Submit'),
                          )

                          /*  RaisedButton(
                        onPressed: () {
                           call();


                        },
                        child: Text('Sign In'),
                        color: Colors.white,
                        textColor: Colors.black,
                      ), */
                        ]),
                      )),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 9637618987
// test5
