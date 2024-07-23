import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'smart_pos_r240_method_channel.dart';

abstract class SmartPosR240Platform extends PlatformInterface {
  /// Constructs a SmartPosR240Platform.
  SmartPosR240Platform() : super(token: _token);

  static final Object _token = Object();

  static SmartPosR240Platform _instance = MethodChannelSmartPosR240();

  /// The default instance of [SmartPosR240Platform] to use.
  ///
  /// Defaults to [MethodChannelSmartPosR240].
  static SmartPosR240Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SmartPosR240Platform] when
  /// they register themselves.
  static set instance(SmartPosR240Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
