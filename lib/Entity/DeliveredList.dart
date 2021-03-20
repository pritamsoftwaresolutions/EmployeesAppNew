import '../Entity/DailyDelivery.dart';

class DeliveredList {
   List<DailyDelivery> deliveredList = new List<DailyDelivery>();

  DeliveredList({
    this.deliveredList,
  });

  factory DeliveredList.fromJson(List<dynamic> parsedJson) {
    print('1');
    List<DailyDelivery> deliveredList = new List<DailyDelivery>();
    print('2');
    deliveredList =
        parsedJson.map((i) => DailyDelivery.fromJson(i)).toList();
    print('3');
    return new DeliveredList(deliveredList: deliveredList);
  }
}
