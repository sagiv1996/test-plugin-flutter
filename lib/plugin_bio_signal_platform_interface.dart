import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'plugin_bio_signal_method_channel.dart';

abstract class PluginBioSignalPlatform extends PlatformInterface {
  /// Constructs a PluginBioSignalPlatform.
  PluginBioSignalPlatform() : super(token: _token);

  static final Object _token = Object();

  static PluginBioSignalPlatform _instance = MethodChannelPluginBioSignal();

  /// The default instance of [PluginBioSignalPlatform] to use.
  ///
  /// Defaults to [MethodChannelPluginBioSignal].
  static PluginBioSignalPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PluginBioSignalPlatform] when
  /// they register themselves.
  static set instance(PluginBioSignalPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  void stopBio() {
    throw UnimplementedError('stopBio() has not been implemented.');
  }

  void startBio() {
    throw UnimplementedError('startBio() has not been implemented.');
  }
}
