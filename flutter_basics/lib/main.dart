import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  // Add your logic here for the first button
                },
                child: Column(
                  children: [
                    Image.asset(
                      'images/loc.png',
                      height: 110,
                      width: 170,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Mark With Location',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(10),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: Colors.grey, // Gray border color
                    width: 2, // Border width
                  ),
                ),
                minWidth: 215,
                height: 170,
                color: Colors.white, // White background color
              ),
              SizedBox(height: 20),
              MaterialButton(
                onPressed: () {
                  // Add your logic here for the second button
                },
                child: Column(
                  children: [
                    Image.asset(
                      'assets/second_image.jpg',
                      height: 110,
                      width: 170,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Second Button',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(0),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: Colors.grey, // Gray border color
                    width: 2, // Border width
                  ),
                ),
                minWidth: 215,
                height: 170,
                color: Colors.white, // White background color
              ),
            ],
          ),
        ),
      ),
    );
  }
}
