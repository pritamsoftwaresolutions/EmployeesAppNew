// import 'MyApp.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

// import 'main.dart';
// import 'CustomerAddPage.dart';
// import 'package:easy_localization/easy_localization.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("back"),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              /////////////////////////////////////////////////////////
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                    )
                  ],
                ),
                width: 400.0,
                height: 50.0,
                child: Text('Today Delivery',
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 50.0,
              ),
              new SizedBox(
                width: data.size.width / 5,
                height: data.size.height / 10.2,
                child: RaisedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Atif Khan',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold)),
                              // SizedBox(width: 85.0),
                              Text('9876543210',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('19/03/2021',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                              // SizedBox(width: 50.0),
                              Text('Delivered:  2L',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              new SizedBox(
                width: data.size.width / 5,
                height: data.size.height / 10.2,
                child: RaisedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Atif Khan',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold)),
                              // SizedBox(width: 85.0),
                              Text('9876543210',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('19/03/2021',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                              // SizedBox(width: 50.0),
                              Text('NOT DELIVERED',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.red,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              new SizedBox(
                width: data.size.width / 5,
                height: data.size.height / 10.2,
                child: RaisedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Atif Khan',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold)),
                              // SizedBox(width: 85.0),
                              Text('9876543210',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('19/03/2021',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                              // SizedBox(width: 50.0),
                              Text('Delivered:  2L',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              new SizedBox(
                width: data.size.width / 5,
                height: data.size.height / 10.2,
                child: RaisedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Atif Khan',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold)),
                              // SizedBox(width: 85.0),
                              Text('9876543210',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('19/03/2021',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                              // SizedBox(width: 50.0),
                              Text('Delivered:  2L',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              new SizedBox(
                width: data.size.width / 5,
                height: data.size.height / 10.2,
                child: RaisedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Atif Khan',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold)),
                              // SizedBox(width: 85.0),
                              Text('9876543210',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('19/03/2021',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                              // SizedBox(width: 50.0),
                              Text('Delivered:  1L',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.green,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              new SizedBox(
                width: data.size.width / 5,
                height: data.size.height / 10.2,
                child: RaisedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Atif Khan',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold)),
                              // SizedBox(width: 85.0),
                              Text('9876543210',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('19/03/2021',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                              // SizedBox(width: 50.0),
                              Text('Delivered:  1L',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.green,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              new SizedBox(
                width: data.size.width / 5,
                height: data.size.height / 10.2,
                child: RaisedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Atif Khan',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold)),
                              // SizedBox(width: 85.0),
                              Text('9876543210',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('19/03/2021',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                              // SizedBox(width: 50.0),
                              Text('Delivered:  1L',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.green,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              new SizedBox(
                width: data.size.width / 5,
                height: data.size.height / 10.2,
                child: RaisedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Atif Khan',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold)),
                              // SizedBox(width: 85.0),
                              Text('9876543210',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('19/03/2021',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                              // SizedBox(width: 50.0),
                              Text('Delivered:  1L',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.green,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              new SizedBox(
                width: data.size.width / 5,
                height: data.size.height / 10.2,
                child: RaisedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Atif Khan',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold)),
                              // SizedBox(width: 85.0),
                              Text('9876543210',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('19/03/2021',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal)),
                              // SizedBox(width: 50.0),
                              Text('Delivered:  1L',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  color: Colors.white,
                ),
              ),

///////////////////////////////////////////////
            ]),
      ),
    );
  }
}
