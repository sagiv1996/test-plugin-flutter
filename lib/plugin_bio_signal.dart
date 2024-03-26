import 'package:flutter/services.dart';

import 'plugin_bio_signal_platform_interface.dart';

class PluginBioSignal {
  Future<String?> getPlatformVersion() {
    return PluginBioSignalPlatform.instance.getPlatformVersion();
  }

  void stopBio() {
    return PluginBioSignalPlatform.instance.stopBio();
  }

  void startBio() {
    return PluginBioSignalPlatform.instance.startBio();
  }
}
