import 'package:face_detection_web/multi_platform/platform_interface/google_mediapipe_face_detection_platform_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// An implementation of [GoogleMediapipeFaceDetectionPlatform] that uses method channels.
class GoogleMediaPipeFaceDetectionMultiPlatform
    extends GoogleMediapipeFaceDetectionPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('google_mediapipe_face_detection');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
    await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}