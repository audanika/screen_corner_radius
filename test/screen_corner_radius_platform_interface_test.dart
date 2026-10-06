import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:screen_corner_radius/src/screen_corner_radius_method_channel.dart';
import 'package:screen_corner_radius/src/screen_corner_radius_platform_interface.dart';

void main() {
  group('ScreenCornerRadiusPlatform', () {
    test('default instance is the method channel implementation', () {
      expect(
        ScreenCornerRadiusPlatform.instance,
        isA<MethodChannelScreenCornerRadius>(),
      );
    });

    test('getScreenCornerRadius() throws if not implemented', () {
      expect(
        _Unimplemented().getScreenCornerRadius,
        throwsA(isA<UnimplementedError>()),
      );
    });
  });
}

class _Unimplemented extends ScreenCornerRadiusPlatform
    with MockPlatformInterfaceMixin {}
