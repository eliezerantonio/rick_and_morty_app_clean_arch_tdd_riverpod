import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rick_and_morty/domain/entities/entities.dart';
import 'package:rick_and_morty/domain/helpers/helpers.dart';
import 'package:rick_and_morty/domain/usecases/usecases.dart';

import '../../helpers/test_helpers.mocks.dart';

void main() {
  late GetCharacteries sut;
  late MockCharacterRepository mockCharacterRepository;

  final testChacracteries = [
    CharacterEntity(
      id: 1,
      name: "Rick",
      status: Status.dead,
      species: Species.human,
      type: "Rick's Toxic Side",
      gender: Gender.male,
      origin: LocationEntity(
        name: "lien Spa",
        url: "https://rickandmortyapi.com/api/location/64",
      ),
      location: LocationEntity(
        name: "Earth",
        url: "https://rickandmortyapi.com/api/location/20",
      ),
      image: "https://rickandmortyapi.com/api/character/avatar/361.jpeg",
      episode: ["https://rickandmortyapi.com/api/episode/27"],
      url: "https://rickandmortyapi.com/api/character/361",
      created: DateTime(2018, 01, 10),
    )
  ];

  setUp(() {
    mockCharacterRepository = MockCharacterRepository();
    sut = GetCharacteries(mockCharacterRepository);
  });

  test("Should get chacrecteries  from the repository", () async {
    //*arrange

    when(mockCharacterRepository.getCharacteries())
        .thenAnswer((_) async => Right(testChacracteries));
    //* act
    final result = await sut.execute();
    //*assert

    expect(result, Right(testChacracteries));
  });
}
