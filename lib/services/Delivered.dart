




import 'package:flutter/material.dart';
import 'DailyListPage.dart';
import 'DailyDeliveryList.dart';
import '../Entity/DailyDelivery.dart';

class Delivered extends StatelessWidget {
  // final items = List<String>.generate(20, (i) => "Item ${i + 1}");
  bool     _color = true;

  //final List<DailyDelivery> items = DailyListPage.dailyDeliveryList8.dailyDelivery;

  final List<DailyDelivery> items = DailyListPage.deliveredList.deliveredList;

  int listLength = 0;

  @override
  Widget build(BuildContext context) {

    Iterator<DailyDelivery> listIterator =
        DailyListPage.deliveredList.deliveredList.iterator;
    final data = MediaQuery.of(context);
    listLength = items.length;
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
                          "19 March",
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
                          items.length.toString(),
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
                      DailyDelivery deliveredEntity = listIterator.current;

                      DailyDelivery dailydeliveryentity1;


                      if(deliveredEntity==null){
                        return null;;
                      }

                      print(deliveredEntity.customerName);
                      return Dismissible(
// Each Dismissible must contain a Key. Keys allow Flutter to
// uniquely identify widgets.
                        key: Key(deliveredEntity.customerName),
///////////////////////////////key: Key(item),
//   key: Key(item[index]),
// Provide a function that tells the app
// what to do after an item has been swiped away.

                        onDismissed: (direction) {
// Remove the item from the data source.




                          print(deliveredEntity.id);
                          dailydeliveryentity1 = deliveredEntity;

                          print('DDDDDDDDDDDDDD  T');
                          print(DailyListPage.deliveredList.deliveredList.length);

                          DailyListPage.deliveredList.deliveredList.remove(deliveredEntity);

                          print(DailyListPage.deliveredList.deliveredList.length);
                          print('DDDDDDDDDDDDDD T');

                          print('EEEEEEEEEEE L');
                          print(DailyListPage.dailyDeliveryList8.dailyDelivery.length);
                          print(dailydeliveryentity1.id );
                          print(dailydeliveryentity1.customerName);

                          DailyListPage.dailyDeliveryList8.dailyDelivery.add(dailydeliveryentity1);
                          print(DailyListPage.dailyDeliveryList8.dailyDelivery.length);

                          print('EEEEEEEEEEE L');
                          listLength = listLength-1;


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
                            color: _color ? Colors.green : Colors.red,
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
                                      '${deliveredEntity.id}:${deliveredEntity.customerName}',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 0, 0, 5),
                                    child: Text(
                                      '${deliveredEntity.customerPhone}',
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
                                      '${deliveredEntity.customerAddress}',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 5, 0, 0),
                                    child: Text(
                                      '${deliveredEntity.productName}',
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
