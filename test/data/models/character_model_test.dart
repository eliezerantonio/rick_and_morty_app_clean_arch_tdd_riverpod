import 'package:flutter_test/flutter_test.dart';
import 'package:rick_and_morty/data/models/character_model.dart';
import 'package:rick_and_morty/data/models/location_model.dart';
import 'package:rick_and_morty/domain/entities/entities.dart';
import 'package:rick_and_morty/domain/helpers/helpers.dart';

void main() {
  final testCharatacterModel = CharacterModel(
    id: 1,
    name: "Rick",
    status: Status.dead,
    species: Species.human,
    type: "Rick's Toxic Side",
    gender: Gender.male,
    origin: const LocationModel(
      name: "lien Spa",
      url: "https://rickandmortyapi.com/api/location/64",
    ),
    location: const LocationModel(
      name: "Earth",
      url: "https://rickandmortyapi.com/api/location/20",
    ),
    image: "https://rickandmortyapi.com/api/character/avatar/361.jpeg",
    episode: ["https://rickandmortyapi.com/api/episode/27"],
    url: "https://rickandmortyapi.com/api/character/361",
    created: DateTime(2018, 01, 10),
  );
  test(
    "Should be sublcass of character entity",
    () async => {
      //*asset
      expect(testCharatacterModel, isA<CharacterEntity>())
    },
  );

  test(
    "Should be sublcass of character entity",
    () async => {
      //*asset
      expect(testCharatacterModel, isA<CharacterEntity>())
    },
  );
}
