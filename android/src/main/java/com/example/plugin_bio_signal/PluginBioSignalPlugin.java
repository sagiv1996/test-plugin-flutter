package com.example.plugin_bio_signal;

import androidx.annotation.NonNull;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import com.biosignals.api.BioApi;

/** PluginBioSignalPlugin */
public class PluginBioSignalPlugin implements FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private MethodChannel channel;
  // private  BioApi myApi;



  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
    channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "plugin_bio_signal");
    channel.setMethodCallHandler(this);
  }

  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
    
    if (call.method.equals("getPlatformVersion")) { 
      result.success("Android " + android.os.Build.VERSION.RELEASE);
      
    }
    
    else if (call.method.equals("stopBio")){
       BioApi myApi = BioApi.getInstance();
    result.success("stopBio");      
    }     
    else if (call.method.equals("startBio")){

      result.success("startBio");      
    }     
    else {
      result.notImplemented();
    }
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    channel.setMethodCallHandler(null);
  }
}
