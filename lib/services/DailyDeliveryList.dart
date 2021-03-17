import '../Entity/DailyDelivery.dart';

class DailyDeliveryList {
  final List<DailyDelivery> dailyDelivery;

  DailyDeliveryList({
    this.dailyDelivery,
  });

  factory DailyDeliveryList.fromJson(List<dynamic> parsedJson) {
    print('1');
    List<DailyDelivery> dailyDeliveryList = new List<DailyDelivery>();
    print('2');
    dailyDeliveryList =
        parsedJson.map((i) => DailyDelivery.fromJson(i)).toList();
    print('3');
    return new DailyDeliveryList(dailyDelivery: dailyDeliveryList);
  }
}
