



import 'package:flutter/material.dart';
import 'DailyListPage.dart';
import 'DailyDeliveryList.dart';
import '../Entity/DailyDelivery.dart';

class Holiday extends StatelessWidget {
  // final items = List<String>.generate(20, (i) => "Item ${i + 1}");
  bool     _color = true;

  final List<DailyDelivery> items = DailyListPage.dailyDeliveryList8.dailyDelivery;

  @override
  Widget build(BuildContext context) {

    Iterator<DailyDelivery> listIterator =
        DailyListPage.dailyDeliveryList8.dailyDelivery.iterator;
    final data = MediaQuery.of(context);
    return SafeArea(
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
                    child: Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Icon(Icons.calendar_today)),
                        Text(
                          "Holiday",
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
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Icon(Icons.person)),
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
                          "1500L C ",
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Text(
                            "500L B",
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12.5,
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),

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
            height: data.size.height / 50,
          ),
          Expanded(
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListView.builder(
                    itemCount: items.length,
                    //   itemCount:DailyListPage.dailyDeliveryList8.dailyDelivery.length,
                    itemBuilder: (context, index) {
                      final item = items[index];



                      listIterator.moveNext();
                      DailyDelivery ee = listIterator.current;


                      if(ee==null){
                        return null;;
                      }

                      print(ee.customerName);
                      return Dismissible(
// Each Dismissible must contain a Key. Keys allow Flutter to
// uniquely identify widgets.
                        key: Key(ee.customerName),
///////////////////////////////key: Key(item),
//   key: Key(item[index]),
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

                              },
                              title: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 0, 0, 5),
                                    child: Text(
                                      '${ee.id}:${ee.customerName}',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 0, 0, 5),
                                    child: Text(
                                      'Hello',
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
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 5, 0, 0),
                                    child: Text(
                                      'Hello',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 5, 0, 0),
                                    child: Text(
                                      'Hello',
                                      style:
                                      TextStyle(color: Colors.orange),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                      );

                    }),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
