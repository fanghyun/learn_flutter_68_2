import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:[
        Image.asset("assets/images/daisy-9.webp", width: 200, height: 200),
        SizedBox(height: 20),
        Image.network(
          "https://i0.wp.com/www.iurban.in.th/wp-content/uploads/2024/02/daisy-9.jpg?ssl=1", 
          width: 200, 
          height: 200,
        ),
      ],
    );
  }
}