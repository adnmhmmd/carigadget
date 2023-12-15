import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_helloworld/Gadget/pages/login.dart';

late FirebaseApp app;
Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  app = await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBrA_GUubteVVfJLmrmsfKHDH4BKvjYz28", 
      appId: "1:494903099406:android:8ce94c1536565f08567c5f", 
      messagingSenderId: "494903099406", 
      projectId: "carigadget-f3594"));
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey.shade200),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
