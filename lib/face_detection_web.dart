import 'dart:ui' as ui;
import 'package:face_detection_web/multi_platform/platform_interface/google_mediapipe_face_detection_platform_interface.dart';
import 'package:google_mlkit_commons/google_mlkit_commons.dart';

class FaceDetectionWeb {
  Future<String?> getPlatformVersion() {
    return GoogleMediapipeFaceDetectionPlatform.instance.getPlatformVersion();
  }

  Future<void> load() {
    return GoogleMediapipeFaceDetectionPlatform.instance.load();
  }

  Future<List<ui.Rect>> processImage(InputImage inputImage) {
    return GoogleMediapipeFaceDetectionPlatform.instance
        .processImage(inputImage);
  }

  Future<void> close() {
    return GoogleMediapipeFaceDetectionPlatform.instance.close();
  }
}