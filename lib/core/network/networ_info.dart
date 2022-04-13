import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
  Stream<InternetConnectionStatus> get onStatusChange;
}

@Injectable(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  @override
  Future<bool> get isConnected => InternetConnectionChecker().hasConnection;

  @override
  Stream<InternetConnectionStatus> get onStatusChange =>
      InternetConnectionChecker().onStatusChange;
}
