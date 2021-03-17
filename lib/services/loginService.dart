import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import '../Entity/User.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';

class loginService {
  /*bool callRest5()  {
    print('callRest5 111111');
    final response =    http.post(
      'http://localhost:8080/dailydairyRest/login' ,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'loginId': '7875893838',
        'pwd':'test'
      }),
    ).whenComplete(() => { return 'dd';

    ) ;

    response.


    if(true){
      print('callRest5  222222');
      return true;
    }
    print('callRest5 333333');
    return false;
  } */

  Future<bool> callRest1(String _username, String pwd) async {
    print('vv : ' + _username + '  : pwd :' + pwd);
    final response = await http.post(
      //  'http://ec2-13-233-178-40.ap-south-1.compute.amazonaws.com:8080/dailydairyRest/login',
      'http://localhost:8080/dailydairyRest/login',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{'loginId': _username, 'pwd': pwd}),
    );

    if (response.statusCode == 200) {
      String hh = response.body;
      Map userMap = jsonDecode(hh);
      User user = User.fromJson(userMap);
      print('Howdy, ${user.firstName}!');

      if (user.firstName == 'Daya') {
        print('daya mil gaya hurrey');
        return true;
      }

      //User user = User.fromJson(jsonEncode(response.body));
      return true;
    } else {
      return false;
    }
    return false;
  }

  downloadPDF() async {
    print('in downloadPDF 1');

    final response = await http.get(
        //  'http://localhost:8080/dailydairyRest/getcustomerReport' ,
        // 'http://ec2-13-233-178-40.ap-south-1.compute.amazonaws.com:8080/dailydairyRest/getcustomerReport',
        'http://localhost:8080/dailydairyRest/getcustomerReport',
        //   'http://ec2-13-233-178-40.ap-south-1.compute.amazonaws.com:8080/dailydairyRest/login',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });
    //  print(response.bodyBytes);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print('dddddd 1');
      //User user = User.fromJson(jsonEncode(response.body));
      var bytes = response.bodyBytes;
      print('dddddd 2 path : ');
      String dir = (await getApplicationDocumentsDirectory()).path;
      dir = '/Users/srinathvangari/Desktop/';
      print('dddddd 2 path : ' + dir);
      File file = new File('$dir/ee.pdf');
      print('dddddd 3');
      await file.writeAsBytes(bytes);
      print('dddddd 4');
      return file;
    } else {
      print('Exception :: Eeeeee');
      throw Exception('Failed to create album. : ');
    }
  }

  downloadPDF2() async {
    print('downloadPDF2 1');

    final response = await http.get(
        //  'http://localhost:8080/dailydairyRest/getcustomerReport' ,
        'http://localhost:8080/dailydairyRest/getcustomerReport',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });
    print('downloadPDF2 2');
    //  print(response.bodyBytes);
    print(response.statusCode);
    print('downloadPDF2 3');
    if (response.statusCode == 200) {
      print('downloadPDF2 4');
      try {
        Dio dio = Dio();
        String dir = '/Users/srinathvangari/Desktop/';
        File file = File("${dir}/tt.pdf");
        print('downloadPDF2 5');
        dio.download('', "${dir}/tt.pdf", onReceiveProgress: (rec, total) {
          print('downloadPDF2 6');
        });
      } catch (e) {
        print('downloadPDF2 Exception 888888');
        print(e.getMessage());
      }
    }
  }
}
