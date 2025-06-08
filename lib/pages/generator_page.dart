import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GeneratorPage extends StatefulWidget {
  const GeneratorPage({super.key});

  @override
  State<GeneratorPage> createState() => _GeneratorPageState();
}

class _GeneratorPageState extends State<GeneratorPage> {
  String qrData = "";
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Generate QR')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Masukkan teks',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  qrData = controller.text.trim();
                });
              },
              child: const Text('Generate QR'),
            ),
            const SizedBox(height: 20),
            if (qrData.isNotEmpty)
              QrImageView(data: qrData, version: QrVersions.auto, size: 200.0),
          ],
        ),
      ),
    );
  }
}
