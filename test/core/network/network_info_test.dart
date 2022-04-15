import 'package:core_catalogo_module/core/network/networ_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'network_info_test.mocks.dart';

@GenerateMocks(
  [
    NetworkInfo,
  ],
)
void main() {
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockNetworkInfo = MockNetworkInfo();
  });

  group(
    'group for handling internet status',
    () {
      test(
        'should be return true',
        () async {
          //arrange
          when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
          //act
          final isConnectetd = await mockNetworkInfo.isConnected;
          //expect
          expect(isConnectetd, true);
        },
      );

      test(
        'should be return false',
        () async {
          //arrange
          when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
          //act
          final isConnectetd = await mockNetworkInfo.isConnected;
          //expect
          expect(isConnectetd, false);
        },
      );
    },
  );
}
