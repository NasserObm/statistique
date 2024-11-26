// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:statistique/Page1.dart';
import 'package:statistique/route.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GoRouter Navigation Example',
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
