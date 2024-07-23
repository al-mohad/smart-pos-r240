import 'package:flutter_test/flutter_test.dart';
import 'package:smart_pos_r240/smart_pos_r240.dart';
import 'package:smart_pos_r240/smart_pos_r240_platform_interface.dart';
import 'package:smart_pos_r240/smart_pos_r240_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSmartPosR240Platform
    with MockPlatformInterfaceMixin
    implements SmartPosR240Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SmartPosR240Platform initialPlatform = SmartPosR240Platform.instance;

  test('$MethodChannelSmartPosR240 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSmartPosR240>());
  });

  test('getPlatformVersion', () async {
    SmartPosR240 smartPosR240Plugin = SmartPosR240();
    MockSmartPosR240Platform fakePlatform = MockSmartPosR240Platform();
    SmartPosR240Platform.instance = fakePlatform;

    expect(await smartPosR240Plugin.getPlatformVersion(), '42');
  });
}
