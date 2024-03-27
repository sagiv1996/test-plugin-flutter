import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_bio_signal/plugin_bio_signal.dart';
import 'package:plugin_bio_signal/plugin_bio_signal_platform_interface.dart';
import 'package:plugin_bio_signal/plugin_bio_signal_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPluginBioSignalPlatform
    with MockPlatformInterfaceMixin
    implements PluginBioSignalPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
  
  @override
  void startBio() {
    // TODO: implement startBio
  }
  
  @override
  void stopBio() {
    // TODO: implement stopBio
  }
}

void main() {
  final PluginBioSignalPlatform initialPlatform = PluginBioSignalPlatform.instance;

  test('$MethodChannelPluginBioSignal is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPluginBioSignal>());
  });

  test('getPlatformVersion', () async {
    PluginBioSignal pluginBioSignalPlugin = PluginBioSignal();
    MockPluginBioSignalPlatform fakePlatform = MockPluginBioSignalPlatform();
    PluginBioSignalPlatform.instance = fakePlatform;

    expect(await pluginBioSignalPlugin.getPlatformVersion(), '42');
  });
}
