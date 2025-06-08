import 'package:flutter/material.dart';

class QRResultDialog extends StatelessWidget {
  final String result;
  final VoidCallback onClose;

  const QRResultDialog({
    super.key,
    required this.result,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Hasil Scan'),
      content: Text(result),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            onClose();
          },
          child: const Text('Tutup'),
        ),
      ],
    );
  }
}
