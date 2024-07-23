
import 'smart_pos_r240_platform_interface.dart';

class SmartPosR240 {
  Future<String?> getPlatformVersion() {
    return SmartPosR240Platform.instance.getPlatformVersion();
  }
}
