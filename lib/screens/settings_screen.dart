import 'package:flutter/material.dart';
import 'package:preferences_app/screens/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  static const String routeName = 'setting';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDark = false;
  int gender = 1;
  String name = 'Jhosep';

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
              value: isDark,
              title: const Text('Dark Mode'),
              onChanged: (value) {
                isDark = value;
                setState(() {});
              },
            ),
            const Divider(),
            RadioListTile<int>(
              value: 1,
              groupValue: gender,
              title: const Text('Masculino'),
              onChanged: (value) {
                gender = value ?? 1;
                setState(() {});
              },
            ),
            RadioListTile<int>(
              value: 2,
              groupValue: gender,
              title: const Text('Femenino'),
              onChanged: (value) {
                gender = value ?? 2;
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
                  name = value;
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
