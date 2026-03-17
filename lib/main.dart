import 'package:flutter/material.dart';
// Importación de tus futuras páginas
import 'LasPaginas/Empresas.dart';
import 'LasPaginas/Criptomonedas.dart';
import 'LasPaginas/ETF.dart';
import 'LasPaginas/Divisas.dart';

void main() {
  runApp(const InvestechApp());
}

class InvestechApp extends StatelessWidget {
  const InvestechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Investech App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        useMaterial3: true,
      ),
      // Configuración de Rutas Nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/empresas': (context) => const Empresas(),
        '/criptomonedas': (context) => const Criptomonedas(),
        '/etf': (context) => const ETF(),
        '/divisas': (context) => const Divisas(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Investech'),
      backgroundColor: Color.fromARGB(185, 83, 123, 165),),
      body: const Center(
        child: Text('Bienvenido a Investech\nUsa el menú para navegar'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Encabezado del Drawer
            const UserAccountsDrawerHeader(
              accountName: Text('Investech'),
              accountEmail: Text('contacto@investech.com\nCalle Finanzas 123\n+52 555 123 4567'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://raw.githubusercontent.com/RubenMendozaCastrejon/Imagenes-Exam/refs/heads/main/Gemini_Generated_Image_lmrz7plmrz7plmrz-removebg-preview.png'),
              ),
              decoration: BoxDecoration(color: Colors.blueGrey),
            ),
            // Opciones del Menú
            _buildDrawerItem(
              icon: Icons.business,
              text: 'Empresas',
              onTap: () => Navigator.pushNamed(context, '/empresas'),
            ),
            _buildDrawerItem(
              icon: Icons.currency_bitcoin,
              text: 'Criptomonedas',
              onTap: () => Navigator.pushNamed(context, '/criptomonedas'),
            ),
            _buildDrawerItem(
              icon: Icons.analytics,
              text: 'ETF',
              onTap: () => Navigator.pushNamed(context, '/etf'),
            ),
            _buildDrawerItem(
              icon: Icons.monetization_on,
              text: 'Divisas',
              onTap: () => Navigator.pushNamed(context, '/divisas'),
            ),
          ],
        ),
      ),
    );
  }

  // Widget auxiliar para no repetir código en los ListTiles
  Widget _buildDrawerItem({required IconData icon, required String text, required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: onTap,
    );
  }
}