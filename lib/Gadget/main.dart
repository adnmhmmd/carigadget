import 'package:flutter/material.dart';
import 'package:flutter_helloworld/Gadget/productdetail.dart';
import 'package:flutter_helloworld/Gadget/gadget.dart';
// import 'package:flutter_helloworld/splash_screen.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
