import 'package:flutter/material.dart';
import 'package:iti_third_task/screens/form.dart';
import 'package:iti_third_task/screens/new_form.dart';
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
      home: NewForm(),
    );
  }
}
