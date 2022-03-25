import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

/// A widget that takes pictures with not chance to frame
class JaimPaMaggle extends StatefulWidget {
  /// The label of the widget
  final String label;

  /// Whether to show the camera selection
  final bool showCameraSelection;

  const JaimPaMaggle({
    Key? key,
    required this.label,
    this.showCameraSelection = false,
  }) : super(key: key);

  @override
  State<JaimPaMaggle> createState() => _JaimPaMaggleState();
}

class _JaimPaMaggleState extends State<JaimPaMaggle> {
  /// Available cameras list
  List<CameraDescription> cameras = [];

  /// The selected camera
  CameraDescription? _selectedCamera;

  /// The camera controller
  CameraController? controller;

  @override
  void initState() {
    _initCameras();
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  /// Initialize the available cameras
  Future<void> _initCameras() async {
    cameras = await availableCameras();
    _selectedCamera = cameras.first;
    _initController();
  }

  /// Initialize the camera controller
  void _initController() {
    controller = CameraController(_selectedCamera!, ResolutionPreset.max);
    controller?.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!(controller?.value.isInitialized ?? false)) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          onPressed: () => _takePicture(context),
          icon: const Icon(Icons.donut_small),
          label: Text(widget.label),
        ),
        (cameras.length > 1 && widget.showCameraSelection)
            ? DropdownButton(
                hint: const Text('Select camera'),
                value: _selectedCamera,
                items: cameras.map((CameraDescription camera) {
                  return DropdownMenuItem<CameraDescription>(
                    value: camera,
                    child: Text(
                      camera.name,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (CameraDescription? cameraDescription) {
                  _selectedCamera = cameraDescription;
                  _initController();
                },
              )
            : Container(),
      ],
    );
  }

  /// Take a picture with the selected camera
  void _takePicture(BuildContext context) async {
    final file = await controller?.takePicture();
    if (file != null) {
      final bytes = await file.readAsBytes();
      showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        builder: (context) => SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () => showDialog(
                  context: context, builder: (context) => Image.memory(bytes)),
              child: Image.memory(bytes),
            ),
          ),
        ),
      );
    }
  }
}
