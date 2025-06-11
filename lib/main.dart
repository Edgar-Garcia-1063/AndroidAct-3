import 'package:flutter/material.dart';
import 'package:myapp/form.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tenis El Perrón',
      themeMode: ThemeMode.system,
      home: MyForm(),
      debugShowCheckedModeBanner: false,
    );
  }
}
