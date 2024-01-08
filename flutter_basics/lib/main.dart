import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black54, primarySwatch: Colors.brown),
      routes: {
        '/': (context) => const GenerateQRCode(),
        '/qr': (context) => const QRImage(),
      },
      initialRoute: '/',
    );
  }
}

class GenerateQRCode extends StatelessWidget {
  const GenerateQRCode({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + QR code'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter your URL'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/qr', arguments: controller.text);
            },
            child: const Text('GENERATE QR CODE'),
          ),
        ],
      ),
    );
  }
}

class QRImage extends StatelessWidget {
  const QRImage({super.key});

  @override
  Widget build(BuildContext context) {
    final String? data = ModalRoute.of(context)!.settings.arguments as String?;

    if (data == null) {
      // Handle the case where data is not available.
      return const Scaffold(
        body: Center(
          child: Text('Error: Missing QR Code data'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + QR code'),
        centerTitle: true,
      ),
      body: Center(
        child: QrIma ge(
          data: data,
          size: 280,
          embeddedImageStyle: QrEmbeddedImageStyle(
            size: const Size(100, 100),
          ),
        ),
      ),
    );
  }
}
