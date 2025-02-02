import 'package:flutter/material.dart';

final darkTheme = ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 30, 144, 255)),
        useMaterial3: true,
        dividerColor: Color.fromARGB(255, 30, 144, 255),
        textTheme: TextTheme(bodyMedium: const TextStyle(fontWeight: FontWeight.w500,fontSize: 20),
        bodySmall:const TextStyle(fontWeight: FontWeight.w300,fontSize: 15)
         ),
         
      );