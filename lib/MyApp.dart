import 'package:flutter/material.dart';
import 'package:testproject/router/router.dart';
import 'package:testproject/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: darkTheme,
      routes:routes,
      
    );
  }
}