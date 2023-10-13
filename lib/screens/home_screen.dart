import 'package:flutter/material.dart';
import 'package:preferences_app/screens/widgets/widgets.dart';
import 'package:preferences_app/shared_preferences/prferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = 'home';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home '),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('IsDarkMode: ${Preferences.isDark}'),
            Divider(),
            Text('Nombre de usuario: ${Preferences.name}'),
            Divider(),
            Text('Genero: ${Preferences.gender}'),
            Divider(),
          ],
        ),
      ),
      drawer: const  SideMenu(),
    );
  }
}


