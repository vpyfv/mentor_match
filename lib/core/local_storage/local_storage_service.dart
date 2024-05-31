import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable()
class LocalStorageService {
  final SharedPreferences _sharedPreferences;

  LocalStorageService({required SharedPreferences sharedPreferences}) : _sharedPreferences = sharedPreferences;

  Either<String, List<String>> get(String key) {
    final result = _sharedPreferences.getStringList(key);
    if (result != null) return right(result);
    return left("no data found for key");
  }

  Future<Either<String, Unit>> put(String key, List<String> value) async {
    final result = await _sharedPreferences.setStringList(key, value);
    if (result) return right(unit);
    return left("unable to write data");
  }

  Future<Either<String, Unit>> remove(String key) async {
    final result = await _sharedPreferences.remove(key);
    if (result) return right(unit);
    return left("unable to remove data");
  }
}
