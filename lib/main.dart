import 'package:flutter/material.dart';
import 'package:task_figma/pages/add_new_invoice.dart';
import 'package:task_figma/pages/finalpage.dart';
import 'package:task_figma/pages/home_page.dart';
import 'package:task_figma/pages/natifications.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:  HomePage(),
    );
  }
}

