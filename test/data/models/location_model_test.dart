import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:rick_and_morty/data/models/models.dart';
import 'package:rick_and_morty/domain/entities/location_entity.dart';

import '../../helpers/json_reader.dart';

void main() {
  const testLocationModel = LocationModel(
      name: "lien Spa", url: "https://rickandmortyapi.com/api/location/64");
  test(
    "should be subclass of the LocationEntity ",
    () async => {
      //* assert

      expect(testLocationModel, isA<LocationEntity>())
    },
  );

  test("Should return a valid model from json", () async {
//*arrange

    final Map<String, dynamic> jsonMap =
        json.decode(readJson("helpers/dummy_location_response.json"));
//*act
    final result = LocationModel.fromJson(jsonMap);

//*expect

    expect(result, equals(testLocationModel));
  });

  test('shoud return a json map containing proper data', () async {
//act
    final result = testLocationModel.toJson();

    // assert
    final expectedJsonMap = {
      "name": "lien Spa",
      "url": "https://rickandmortyapi.com/api/location/64"
    };

    //expect

    expect(result, equals(expectedJsonMap));
  });
}
