import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const FundamentosApp());
}

class FundamentosApp extends StatelessWidget {
  const FundamentosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fundamentos Dart y Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
