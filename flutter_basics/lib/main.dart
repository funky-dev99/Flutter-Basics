import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorLoginApp());
}

class CalculatorLoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorLoginPage(),
    );
  }
}

class CalculatorLoginPage extends StatefulWidget {
  @override
  _CalculatorLoginPageState createState() => _CalculatorLoginPageState();
}

class _CalculatorLoginPageState extends State<CalculatorLoginPage> {
  String password = '';
  String enteredPassword = '';

  void _addNumber(int number) {
    setState(() {
      enteredPassword += number.toString();
    });
  }

  void _deleteLastDigit() {
    setState(() {
      if (enteredPassword.isNotEmpty) {
        enteredPassword = enteredPassword.substring(0, enteredPassword.length - 1);
      }
    });
  }

  void _submitPassword() {
    if (enteredPassword == password) {
      // Password matches, perform login action
      print('Login successful');
      // Navigate to the next screen or perform desired action
    } else {
      // Password doesn't match, display error message or perform desired action
      print('Login failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Enter your password',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          SizedBox(height: 30.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              enteredPassword,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 30.0),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(20.0),
            children: List.generate(10, (index) {
              return GestureDetector(
                onTap: () => _addNumber(index),
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Text(
                    '$index',
                    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }).toList()
              ..add(
                GestureDetector(
                  onTap: _deleteLastDigit,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Icon(
                      Icons.backspace,
                      size: 30.0,
                    ),
                  ),
                ),
              ),
          ),
          SizedBox(height: 30.0),
          ElevatedButton(
            onPressed: _submitPassword,
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
