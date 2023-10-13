import 'package:flutter/material.dart';
import 'package:preferences_app/screens/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home '),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('IsDarkMode:'),
            Divider(),
            Text('Nombre de usuario:'),
            Divider(),
            Text('Genero:'),
            Divider(),
          ],
        ),
      ),
      drawer: const  SideMenu(),
    );
  }
}


