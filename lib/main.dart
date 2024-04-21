import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
      // Define las rutas para las páginas aquí
      routes: {
        '/login': (context) => const LoginCameraPage(),
        // Añade más rutas según sea necesario
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Image.asset('assets/images/logoM.png'),
        ElevatedButton(
          child: const Text('Ir a Login'),
          onPressed: () => Navigator.pushNamed(context, '/login'),
        ),
          ],
        ),
      ),
        );
  }
}

class LoginCameraPage extends StatelessWidget {
  const LoginCameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Cámara'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Añade aquí los elementos de tu página de login
            ElevatedButton(
              child: const Text('Iniciar sesión'),
              onPressed: () {
                // Añade aquí la lógica para determinar a qué página ir
                Navigator.pushReplacementNamed(context, '/inicio_produccion');
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Definir aquí el resto de las páginas de la aplicación
// Siguiendo el ejemplo de HomePage y LoginCameraPage
