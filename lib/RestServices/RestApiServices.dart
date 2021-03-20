import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import '../Entity/User.dart';
import '../Entity/DailyDelivery.dart';
import '../Services/DailyDeliveryList.dart';
import '../dummy/dummyUser.dart';
import '../dummy/dummyDailyDeliveryListJSON.dart';
import '../dummy/dummyVacationList.dart';



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
  Future<DailyDeliveryList> getAllDailyDeliveryRest(String dummy) async {
    print('IN getAllDailyDeliveryRest ,  dummy : '+dummy);
print(" ****************************************AAA ***********");




    print(dummyDailyDeliveryListJSON.json5String);

    print(" ***************************************************");
    if(dummy == "true"){


      List<dynamic> DailyDeliveryListJson = jsonDecode(dummyDailyDeliveryListJSON.json5String);

      print(DailyDeliveryListJson);
      DailyDeliveryList dailyDeliveryList =
      DailyDeliveryList.fromJson(DailyDeliveryListJson);

      print(DailyDeliveryListJson);
      return dailyDeliveryList;

    }else{



    final response =
    await http.get(getAllDailyDeliveryURL, headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      String hh = response.body;
      print(" ***************************************************");
      print('QQQQQQQQQ :           '+hh);
      print(" ***************************************************");

      List<dynamic> DailyDeliveryListJson = jsonDecode(hh);

      print(DailyDeliveryListJson);
      DailyDeliveryList dailyDeliveryList =
      DailyDeliveryList.fromJson(DailyDeliveryListJson);

      print(DailyDeliveryListJson);
      return dailyDeliveryList;
    }

    }
  }

  Future<bool> loginRestService(String _username, String pwd, String dummy) async {
    print('IN loginRestService : username  : ' + _username + '  : pwd :' + pwd+ '  : dummy :' + dummy );

    if(identical(dummy,"true")  ){

      if(dummyUser.mobileNumber == _username && dummyUser.pass == pwd){
     // if(true){
        print('dummy login sucessfull');
        return true;
      }else{
        print('dummy NOT login sucessfull');
        return false;
      }

    }else {
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
        if (responseBody != null) {
          Map userMap = jsonDecode(responseBody);
          if (userMap != null) {
            User user = User.fromJson(userMap);
            print('Howdy, ${user.firstName}!');
            return true;
          } else {
            return false;
          }
        } else {
          return false;
        }
      } else {
        return false;
      }
    }
    return false;

  }







  Future<DailyDeliveryList> vacationList(String dummy) async {
    print('IN vacationList ,  dummy : '+dummy);
    print(" ************************vacationList****************AAA ***********");

    print(dummyVacationList.jsonVacationString);

    print(" **************************vacationList*************************");
    if(dummy == "true"){


      List<dynamic> DailyDeliveryListJson = jsonDecode(dummyVacationList.jsonVacationString);

      print(DailyDeliveryListJson);
      DailyDeliveryList dailyDeliveryList =
      DailyDeliveryList.fromJson(DailyDeliveryListJson);

      print(DailyDeliveryListJson);
      return dailyDeliveryList;

    }else{


      print(" **************************vacationList NOT DUmmy*************************");

    }
  }


}