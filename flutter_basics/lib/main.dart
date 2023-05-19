import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyDropdownButton(),
  ));
}

class MyDropdownButton extends StatefulWidget {
  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  String selectedClaimType = '';

  List<String> _claimTypes = [
    'Claim Type 1',
    'Claim Type 2',
    'Claim Type 3',
    'Claim Type 4',
    'Claim Type 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Button'),
      ),
      body: Center(
        child: Container(
          width: 180,
          decoration: BoxDecoration(
            color: Colors.grey, // Change the color to your desired color
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Change the shadow color if needed
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3), // Adjust the offset for the drop shadow
              ),
            ],
          ),
          child: DropdownButton<String>(
            value: selectedClaimType.isNotEmpty ? selectedClaimType : null,
            hint: Text('Select Claim Type'),
            onChanged: (String? value) {
              setState(() {
                selectedClaimType = value ?? '';
              });
            },
            items: _claimTypes.map((String claimType) {
              return DropdownMenuItem<String>(
                value: claimType,
                child: Text(claimType),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
