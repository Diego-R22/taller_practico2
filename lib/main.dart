import 'package:flutter/material.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tarea: child & children"),
        ),

        body: Container(
          color: Colors.blue.shade100, // color de fondo del Container

          // 🔹 Aquí usamos child:
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min, // evita ocupar toda la pantalla

              // 🔹 Aquí usamos children:
              children: [
                ElevatedButton(
                  onPressed: () => print("Botón 1 presionado"),
                  child: const Text("Botón 1"),
                ),

                ElevatedButton(
                  onPressed: () => print("Botón 2 presionado"),
                  child: const Text("Botón 2"),
                ),

                ElevatedButton(
                  onPressed: () => print("Botón 3 presionado"),
                  child: const Text("Botón 3"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
