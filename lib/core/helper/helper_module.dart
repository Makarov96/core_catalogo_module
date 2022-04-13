import 'package:core_catalogo_module/core/helper/isar_helper.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@module
abstract class HelperModule {
  @lazySingleton
  IsarHelper get isarHelper;

  @lazySingleton // or @singleton
  http.Client get httpClient => http.Client();
}
