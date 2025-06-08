import 'package:flutter/material.dart';

import 'generator_page.dart';
import 'scanner_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR Code App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ScannerPage()),
                );
              },
              icon: const Icon(Icons.qr_code_scanner),
              label: const Text("Scan QR Code"),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const GeneratorPage()),
                );
              },
              icon: const Icon(Icons.qr_code),
              label: const Text("Generate QR Code"),
            ),
          ],
        ),
      ),
    );
  }
}
