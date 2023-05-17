//
//
// import 'package:flutter/material.dart';
// import 'package:location/location.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       // Remove the debug banner
//       debugShowCheckedModeBanner: false,
//       title: 'Location',
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   late bool _serviceEnabled;
//   late PermissionStatus _permissionGranted;
//
//   LocationData? _userLocation;
//
//   Future<void> _getUserLocation() async {
//     Location location = Location();
//
//     _serviceEnabled = await location.serviceEnabled();
//     if (_serviceEnabled) {
//       _serviceEnabled = await location.requestService();
//       if (!_serviceEnabled) {
//         return;
//       }
//     }
//
//     _permissionGranted = await location.hasPermission();
//     if (_permissionGranted == PermissionStatus.denied) {
//       _permissionGranted = await location.requestPermission();
//       if (_permissionGranted != PermissionStatus.granted) {
//         return;
//       }
//     }
//
//     final locationData = await location.getLocation();
//     setState(() {
//       _userLocation = locationData;
//     });
//
//     if (_userLocation != null) {
//       print('Latitude: ${_userLocation?.latitude}');
//       print('Longitude: ${_userLocation?.longitude}');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Get Location'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: _getUserLocation,
//                 child: const Text('Check Location'),
//               ),
//               const SizedBox(height: 25),
//               _userLocation != null
//                   ? Wrap(
//                 children: [
//                   Text('Your latitude: ${_userLocation?.latitude}'),
//                   const SizedBox(width: 10),
//                   Text('Your longitude: ${_userLocation?.longitude}'),
//                 ],
//               )
//                   : const Text(
//                   'Please enable location service and grant permission'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

