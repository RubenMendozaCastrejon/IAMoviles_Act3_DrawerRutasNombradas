import 'package:flutter/material.dart';

class Empresas extends StatelessWidget {
  const Empresas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sección Empresas'),
      backgroundColor: Color.fromARGB(185, 83, 123, 165)),
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/RubenMendozaCastrejon/Imagenes-Exam/refs/heads/main/Empresa.png', // Reemplazar link
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}