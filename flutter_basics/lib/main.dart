import 'package:flutter/material.dart';
import 'package:flutter_basics/attendance.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> containerTexts = [
    'Container 0',
    'Container 1',
    'Container 2',
    'Container 3',
    'Container 4',
    'Container 5',
  ];

  final List<String> imagePaths = [
    'assets/images/image0.png',
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
    'assets/images/image5.png',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter GridView'),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(6, (index) {
              return _buildContainer(index, context); // Pass the context to _buildContainer
            }),
          ),
        ),
      ),
    );
  }

  Widget _buildContainer(int index, BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 145.0,
        height: 145.0,
        child: MaterialButton(
          onPressed: () {
            // Replace with your own logic for each container
            switch (index) {
              case 0:
                _handleContainer0Pressed(context); // Pass the context to _handleContainerXPressed methods
                break;
              case 1:
                _handleContainer1Pressed(context);
                break;
              case 2:
                _handleContainer2Pressed(context);
                break;
              case 3:
                _handleContainer3Pressed(context);
                break;
              case 4:
                _handleContainer4Pressed(context);
                break;
              case 5:
                _handleContainer5Pressed(context);
                break;
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePaths[index],
                width: 80.0,
                height: 80.0,
              ),
              SizedBox(height: 10.0),
              Text(
                containerTexts[index],
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 2.0,
          color: Colors.white,
          textColor: Colors.black,
        ),
      ),
    );
  }

  // Separate onPressed functions for each container
  void _handleContainer0Pressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Attendance()), // Replace NextPage with the desired page widget
    );
  }

  void _handleContainer1Pressed(BuildContext context) {
    // Action for Container 1
    print('Container 1 pressed!');
  }

  void _handleContainer2Pressed(BuildContext context) {
    // Action for Container 2
    print('Container 2 pressed!');
  }

  void _handleContainer3Pressed(BuildContext context) {
    // Action for Container 3
    print('Container 3 pressed!');
  }

  void _handleContainer4Pressed(BuildContext context) {
    // Action for Container 4
    print('Container 4 pressed!');
  }

  void _handleContainer5Pressed(BuildContext context) {
    // Action for Container 5
    print('Container 5 pressed!');
  }
}
