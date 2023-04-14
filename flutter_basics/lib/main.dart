import 'package:flutter/material.dart';

void main () {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    )
  );
}
class DicePage extends StatelessWidget {
  const DicePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: MaterialButton(
                  onPressed: (){
                    print('Fuck');
                  },
                child: Image.asset('images/poor.png'),
              ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: (){},
              child: Image.asset('images/poor.png'),
            ),
          ),
        ],
      ),
    );
  }
}
