import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mentor_match/core/local_storage/local_storage_service.dart';

@Injectable()
class AuthRepo {
  final LocalStorageService _service;
  AuthRepo({required LocalStorageService service}) : _service = service;

  Either<String, List<String>> checkIfUserSignedIn() {
    return _service.get('user');
  }

  Future<Either<String, Unit>> signIn(String userName, String password) async {
    return await _service.put('user', [userName, password]);
  }

  Future<Either<String, Unit>> signOut() async {
    return await _service.remove('user');
  }
}
