import 'package:flutter/material.dart';
import 'package:week4_widget/contract_page.dart';
import 'package:week4_widget/my_order_page.dart';
import 'package:week4_widget/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.lightBlue),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 63, 34, 255)),
        useMaterial3: true,
      ),
      home: const Welcome(),
    );
  }
}
