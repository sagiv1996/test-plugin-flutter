import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'plugin_bio_signal_platform_interface.dart';

/// An implementation of [PluginBioSignalPlatform] that uses method channels.
class MethodChannelPluginBioSignal extends PluginBioSignalPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plugin_bio_signal');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  void stopBio() {
    methodChannel.invokeMethod('stopBio');
  }

  @override
  void startBio() {
    methodChannel.invokeMethod('startBio');
  }
}
