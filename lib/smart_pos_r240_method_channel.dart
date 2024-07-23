import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'smart_pos_r240_platform_interface.dart';

/// An implementation of [SmartPosR240Platform] that uses method channels.
class MethodChannelSmartPosR240 extends SmartPosR240Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('smart_pos_r240');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
