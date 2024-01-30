import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraPreviewsScreen extends StatefulWidget {
  const CameraPreviewsScreen({super.key});

  @override
  State<CameraPreviewsScreen> createState() => _CameraPreviewsScreenState();
}

class _CameraPreviewsScreenState extends State<CameraPreviewsScreen> {
  CameraController? cameraController;

  @override
  void initState() {
    super.initState();
    availableCameras().then((cameras) {
      final cameraDescription = cameras.first;
      cameraController = CameraController(
        cameraDescription,
        ResolutionPreset.high,
      );
      cameraController?.initialize().then((_) {
        setState(() {});
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (cameraController != null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Camera"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(18),
          ),
          child: cameraController!.value.isInitialized
              ? CameraPreview(cameraController!)
              : const SizedBox.shrink(),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
