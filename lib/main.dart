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

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar personalizada
      appBar: AppBar(
        title: const Text('Información Personal'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              debugPrint("Botón de información presionados");
            },
          ),
        ],
      ),

      // Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Card personalizada
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Text(
                      'Eduardo Pardo',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'Cédula: 1150373791',
                      style: TextStyle(fontSize: 18),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'Carrera: Ingeniería en Tecnologías de la Información',
                      style: TextStyle(fontSize: 18),
                    ),

                    const SizedBox(height: 20),

                    // Image.network
                    Image.network(
                      'https://flutter.dev/images/flutter-logo-sharing.png',
                      height: 150,
                    ),

                    const SizedBox(height: 20),

                    // ElevatedButton
                    ElevatedButton(
                      onPressed: () {
                        debugPrint("Botón ElevatedButton presionado");
                      },
                      child: const Text('Presionar'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Hola, este es mi SnackBar personalizado'),
            ),
          );
        },
        child: const Icon(Icons.message),
      ),
    );
  }
}