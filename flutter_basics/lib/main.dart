import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text("I am Rich"),
      ) ,

      body: Center(
        child: Image(
            image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/too-rich-canceled-ellen-1598642045.jpg?resize=980:*')),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey[900],
        child: Icon(Icons.add),
        onPressed: () {  },
      ),
    );
  }
}







    
    