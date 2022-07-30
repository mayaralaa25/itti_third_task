import 'package:flutter/material.dart';
import 'screens/chat.dart';
import 'screens/wallet_total.dart';
import 'screens/currency_home.dart';

void main() {
  runApp(const MyNewApp());
}

class MyNewApp extends StatelessWidget {
  const MyNewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Chat(),
    );
  }
}
