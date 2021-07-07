library fitness_driven_api;

import 'package:http/http.dart' as http;

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class FoodDiary {
  Future<String> getRequest() async {
    var url = Uri.http("localhost:8080", "/food-diary");
    var response = await http.get(
      url,
      headers: {
        "X-IDENTITY":
            "eyJ1aWQiOiJib2IxMjMiLCJuYW1lIjoiQm9iIDEyMyIsImVtYWlsIjoiYm9iMTIzQGdtYWlsLmNvbSIsImlzX2FkbWluIjpmYWxzZX0=",
      },
    );
    return response.body;
  }

  Future<String> postRequest(xIdentity) async {
    var url = Uri.http("localhost:8080", "/food-diary");
    var response = await http.post(
      url,
      headers: {
        "X-IDENTITY": xIdentity,
      },
      body: null,
    );
    return response.body;
  }
}

// TODO: https://github.com/DinoLeung/TeleDart/blob/master/lib/src/teledart/fetch/long_polling.dart
