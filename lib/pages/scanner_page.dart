import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../widgets/qr_result_dialog.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  MobileScannerController controller = MobileScannerController();
  bool isDialogOpen = false;

  void _showDialog(String code) {
    if (isDialogOpen) return;
    isDialogOpen = true;

    showDialog(
      context: context,
      builder: (_) => QRResultDialog(
        result: code,
        onClose: () {
          isDialogOpen = false;
          controller.start();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR'),
        actions: [
          IconButton(
            icon: const Icon(Icons.cameraswitch),
            onPressed: () => controller.switchCamera(),
          ),
        ],
      ),
      body: MobileScanner(
        controller: controller,
        onDetect: (capture) {
          final code = capture.barcodes.first.rawValue;
          if (code != null) {
            controller.stop();
            _showDialog(code);
          }
        },
      ),
    );
  }
}
