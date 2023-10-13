import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeader(),
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(
              context,
              HomeScreen.routeName,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.people,
            ),
            title: const Text('People'),
            onTap: () => Navigator.pushReplacementNamed(
              context,
              HomeScreen.routeName,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text('Settings'),
            onTap: () => Navigator.pushReplacementNamed(
              context,
              SettingsScreen.routeName,
            ),
          ),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader();

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/menu-img.jpeg',
          ),
        ),
      ),
      child: SizedBox(),
    );
  }
}
