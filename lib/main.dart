import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/settings/view/settings.dart';
import 'package:whatsapp_clone/test_file.dart';
import 'screens/home/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const ScreenHome(),
      // home: TestWidget(),
      // home: ScreenSettings(),
    );
  }
}
