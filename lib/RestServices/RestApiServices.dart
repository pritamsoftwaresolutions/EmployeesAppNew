import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import '../Entity/User.dart';
import '../Entity/DailyDelivery.dart';
import '../Services/DailyDeliveryList.dart';

class RestApiServices {
//Localhost
  // String loginRestURL = "http://localhost:8080/dailydairyRest/login";
  //String getAllDailyDeliveryURL = "http://localhost:8080/dailydairyRest/getAllDailyDelivery";

//AWS
  String loginRestURL =
      "http://ec2-15-206-147-34.ap-south-1.compute.amazonaws.com:9092/dailydairyRest/login";
  String getAllDailyDeliveryURL =
      "http://ec2-15-206-147-34.ap-south-1.compute.amazonaws.com:9092/dailydairyRest/getAllDailyDelivery";

  //Future<DailyDeliveryList> getAllDailyDeliveryRest() async {
  Future<DailyDeliveryList> getAllDailyDeliveryRest() async {
    print('IN getAllDailyDeliveryRest ');
    final response =
        await http.get(getAllDailyDeliveryURL, headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      String hh = response.body;
      List<dynamic> DailyDeliveryListJson = jsonDecode(hh);

      print(DailyDeliveryListJson);
      DailyDeliveryList dailyDeliveryList =
          DailyDeliveryList.fromJson(DailyDeliveryListJson);

      print(DailyDeliveryListJson);
      return dailyDeliveryList;
      /*  print("photos " + dailyDeliveryList.dailyDelivery[0].routeDeliveryId);

      if (dailyDeliveryList.dailyDelivery[0].status == 'Completed') {
        print('Completed');
        return true;
      }

    } else {
      return false;
    }
    return false;
*/
    }
  }

  Future<bool> loginRestService(String _username, String pwd) async {
    print('IN loginRestService : username  : ' + _username + '  : pwd :' + pwd);
    final response = await http.post(
      // '10.0.2.2:8000',
      // 'http://ec2-13-233-178-40.ap-south-1.compute.amazonaws.com:8080/dailydairyRest/login',
      loginRestURL,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{'loginId': _username, 'pwd': pwd}),
    );

    if (response.statusCode == 200) {
      String responseBody = response.body;
      if(responseBody!=null) {
        Map userMap = jsonDecode(responseBody);
        if (userMap != null) {
          User user = User.fromJson(userMap);
          print('Howdy, ${user.firstName}!');
          return true;
        } else {
          return false;
        }
      }else{
        return false;
      }

    } else {
      return false;
    }
    return false;
  }
}
