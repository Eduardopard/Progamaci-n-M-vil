import 'package:flutter/material.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Primera App Flutter',

      // ThemeData personalizado
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey[200],
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
          bodyMedium: TextStyle(
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
