import 'package:flutter/material.dart';

void main() {
  //runApp(const MyApp());
  // const app = MaterialApp(title: "หัวข้อ", home: Text("Hello World"));
  // runApp(app);

  runApp(
    MaterialApp(
      title: "หัวข้อ",
      home: Scaffold(
        appBar: AppBar(
          title: Text("หัวข้อ"),
          backgroundColor: const Color.fromARGB(255, 15, 93, 166),
          centerTitle: true,
        ),
        body: Home(),
      ),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color : const Color.fromARGB(255, 15, 93, 166),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.all(50),
        child: Text(
          "Hello Word 3",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ), 
    );
  }
}