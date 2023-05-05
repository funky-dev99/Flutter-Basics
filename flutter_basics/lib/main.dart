import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyApp(), // Wrap your app
  ),
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Demo App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              color: Colors.amber,
            ),
            Container(
              height: 200,
              color: Colors.black,)
          ],
        ),
      )

      // body: Center(child: Text('You have pressed the button $_count times.')),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => setState(() => _count++),
      //   tooltip: 'Increment Counter',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
