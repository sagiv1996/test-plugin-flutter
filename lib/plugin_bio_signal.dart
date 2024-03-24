
import 'plugin_bio_signal_platform_interface.dart';

class PluginBioSignal {
  Future<String?> getPlatformVersion() {
    return PluginBioSignalPlatform.instance.getPlatformVersion();
  }
}
