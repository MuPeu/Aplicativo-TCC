import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const PortaDeFergasApp());
}

class PortaDeFergasApp extends StatelessWidget {
  const PortaDeFergasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Porta de Fergas',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}
