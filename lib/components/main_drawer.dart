import 'package:flutter/material.dart';

import '../utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget _createItem(IconData icon, String label, VoidCallback onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
        color: Colors.white,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            alignment: Alignment.bottomLeft,
            child: const Text(
              "Menu",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          _createItem(
            Icons.person,
            'Conta',
                () {
              Navigator.of(context).pushNamed(AppRoutes.ACCOUNT);
            },
          ),
          _createItem(
            Icons.settings,
            'Configurações',
                () {
              Navigator.of(context).pushNamed(AppRoutes.SETTINGS);
            },
          ),
        ],
      ),
    );
  }
}
