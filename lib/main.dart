import 'package:flutter/material.dart';
import 'contract_page.dart';
import 'welcome.dart';
import 'my_order_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Laundry App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/contract': (context) => const ContractPage(),
        '/welcome': (context) => const Welcome(),
        '/orders': (context) => const MyOrderPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contract');
              },
              child: const Text('Go to Contract Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/welcome');
              },
              child: const Text('Go to Welcome Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/orders');
              },
              child: const Text('Go to Order Page'),
            ),
          ],
        ),
      ),
    );
  }
}
