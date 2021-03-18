class DailyDelivery {
  int id;
  String routeDeliveryId;
  String customerId;
  String empId;
  String deliverydateTime;
  String status = "Deliverd";
  String productId;
  // String empName = "empName-w";
  // String customerName = "cusName-w";
  // String productName = "prodName-w";
  // String customerContact = "cusContact-w";
  // String customerAddress = "cusAddress-w";
  String empName = "Santosh";
  String customerName = "Bhau Kadam";
  String productName = "Cow Milk";
  String customerAddress = "204, Ram Building, Lane No-6";
  String customerPhone = "9876543210";

  // DailyDelivery({this.id, this.routeDeliveryId, this.customerId, this.empId, this.deliverydateTime, this.status, this.productId});
  DailyDelivery(this.id, this.routeDeliveryId, this.customerId, this.empId,
      this.deliverydateTime, this.status, this.productId);

  // DailyDelivery({this.status});

  factory DailyDelivery.fromJson(dynamic json) {
    print('In DailyDelivery class ');

    // return DailyDelivery(json['status'] as String, json['id'] as int);

    return DailyDelivery(
      json['id'],
      json['routeDeliveryId'] as String,
      json['customerId'] as String,
      json['empId'] as String,
      json['deliverydateTime'] as String,
      json['status'] as String,
      json['productId'] as String,
    );
  }

  /*factory DailyDelivery.fromJson(Map<String, dynamic> json){
     print(5);
     print(json);
     return new DailyDelivery(
         id: json['id'].toString(),

       routeDeliveryId: json['routeDeliveryId']().toString(),
       customerId: json['customerId']().toString(),
       empId: json['empId']().toString(),
       deliverydateTime: json['deliverydateTime']().toString(),
       status: json['status']().toString(),
       productId: json['productId']().toString(),
     );
   }*/

  /* factory DailyDelivery.fromJson(List< dynamic>  json) {
     print(json);
     final items = List<dynamic>.generate(1, (i) => json);
     return DailyDelivery(id : json['id'] as int);
   }

   @override
   String toString() {
     return '{ ${this.id}} }';
   }*/

  @override
  String toString() {
    return '{ ${this.status}} }';
  }
}
