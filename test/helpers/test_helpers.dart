import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:rick_and_morty/domain/repositories/charecter_repository.dart';

@GenerateMocks(
  [CharacterRepository],
  customMocks: [MockSpec<http.Client>(as: #MockHttoClient)],
)
void main() {}
