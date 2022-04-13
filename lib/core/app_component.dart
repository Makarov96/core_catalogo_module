import 'package:core_catalogo_module/core/conf/isar_configuration.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:core_catalogo_module/core/app_component.config.dart';

final GetIt locator = GetIt.instance;
@InjectableInit(
  preferRelativeImports: false,
  initializerName: r'$storeInitGetIt',
)
void _configureLocator() => $storeInitGetIt(locator);

Future<void> init() async {
  _configureLocator();
  await locator.get<IsarConfiguration>().openMultipleBox();
}
