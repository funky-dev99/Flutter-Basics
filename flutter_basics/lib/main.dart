import 'package:flutter/material.dart';

void main () {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Shahiru',style: TextStyle(
            fontSize: 17.0, color: Colors.black
          ),),
          backgroundColor: Colors.blue,
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
                    // print('Fuck');
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
