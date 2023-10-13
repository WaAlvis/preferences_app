import 'package:flutter/material.dart';
import 'package:preferences_app/screens/Providers/theme_provider.dart';
import 'package:preferences_app/screens/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../shared_preferences/prferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  static const String routeName = 'setting';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text(
              'Ajustes',
              style: TextStyle(fontSize: 40),
            ),
            const Divider(),
            SwitchListTile.adaptive(
              value: Preferences.isDark,
              title: const Text('Dark Mode'),
              onChanged: (value) {
                Preferences.isDark = value;

                final themeProvider = context.read<ThemeProvider>();
                value
                    ? themeProvider.setDarkMode()
                    : themeProvider.setLightMode();
                setState(() {});
              },
            ),
            const Divider(),
            RadioListTile<int>(
              value: 1,
              groupValue: Preferences.gender,
              title: const Text('Masculino'),
              onChanged: (value) {
                Preferences.gender = value ?? 1;
                setState(() {});
              },
            ),
            RadioListTile<int>(
              value: 2,
              groupValue: Preferences.gender,
              title: const Text('Femenino'),
              onChanged: (value) {
                Preferences.gender = value ?? 2;
                setState(() {});
              },
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextFormField(
                onChanged: (value) {
                  Preferences.name = value;
                  setState(() {});
                },
                decoration: const InputDecoration(
                  helperText: 'Nombre del Usuario',
                  label: Text('Nombre'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
