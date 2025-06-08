import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const QRApp());
}

class QRApp extends StatelessWidget {
  const QRApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR App',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const HomePage(),
    );
  }
}
