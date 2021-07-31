library fitness_driven_api;

import 'package:dio/dio.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

// TODO: interceptor to measure performance
//  https://github.com/eyeem/dio_firebase_performance/blob/master/lib/src/dio_firebase_performance.dart

class FoodDiary {
  Future<String> getRequest() async {
    var dio = Dio(BaseOptions(
      baseUrl: "http://localhost:8080/api/v1/",
      // connectTimeout: 5000, // TODO: throw exception
      // receiveTimeout: 5000, // TODO: throw exception
      // headers: {HttpHeaders.userAgentHeader: 'dio', 'common-header': 'xx'}, // TODO: always pass up-to-date auth?
    ));

    // var url = Uri.http("localhost:8080", "/food-diary");
    try {
      var result = await dio.request(
        "/food-diary",
        data: "{\"age\": 23}",
      );

      return result.data.toString();
    } catch(e) {
      print(e);
      return "fail lol";
    }
    // var response = await http.get(
    //   url,
    //   headers: {
    //     "X-IDENTITY":
    //         "eyJ1aWQiOiJib2IxMjMiLCJuYW1lIjoiQm9iIDEyMyIsImVtYWlsIjoiYm9iMTIzQGdtYWlsLmNvbSIsImlzX2FkbWluIjpmYWxzZX0=",
    //   },
    // );
    // return response.body;
  }

  Future<String> postRequest(xIdentity) async {
    // var url = Uri.http("localhost:8080", "/food-diary");
    // var response = await http.post(
    //   url,
    //   headers: {
    //     "X-IDENTITY": xIdentity,
    //   },
    //   body: null,
    // );
    // return response.body;
    return "";
  }
}

// TODO: https://github.com/DinoLeung/TeleDart/blob/master/lib/src/teledart/fetch/long_polling.dart
