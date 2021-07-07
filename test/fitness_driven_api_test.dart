import 'package:flutter_test/flutter_test.dart';

import 'package:fitness_driven_api/fitness_driven_api.dart';

void main() {
  test("adds one to input values", () {
    final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
  });

  test("should make a get request", () async {
    final foodDiary = FoodDiary();
    expect(await foodDiary.getRequest(), "hi");
  });

  test("should make a post request", () async {
    final foodDiary = FoodDiary();
    const xIdentity = "eyJ1aWQiOiJib2IxMjMiLCJuYW1lIjoiQm9iIDEyMyIsImVtYWlsIjoiYm9iMTIzQGdtYWlsLmNvbSIsImlzX2FkbWluIjpmYWxzZX0=";
    expect(await foodDiary.postRequest(xIdentity), "it was \"$xIdentity\"");
  });
}
