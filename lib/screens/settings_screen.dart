import 'package:flutter/material.dart';
import '../utils/app_routes.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationsEnabled = false;
  String _selectedLanguage = 'Português';

  final List<String> _languages = [
    'Português',
    'Inglês',
    'Espanhol',
    'Francês',
  ];

  void _toggleNotifications(bool? value) {
    setState(() {
      _notificationsEnabled = value ?? false;
    });
  }

  void _selectLanguage(String? newValue) {
    setState(() {
      _selectedLanguage = newValue ?? _selectedLanguage;
    });
  }

  void _logout() {
    Navigator.of(context).pushNamed('/register');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Você saiu da conta')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor ,
        title: const Text('Configurações'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SwitchListTile(
              title: const Text('Ativar Notificações',
              style: TextStyle(color: Colors.white),),
              value: _notificationsEnabled,
              onChanged: _toggleNotifications,
            ),
            DropdownButtonFormField<String>(
              value: _selectedLanguage,
              items: _languages.map((String language) {
                return DropdownMenuItem<String>(
                  value: language,
                  child: Text(language,
                  style: TextStyle(color: Colors.white),),
                );
              }).toList(),
              onChanged: _selectLanguage,
              decoration: const InputDecoration(labelText: 'Selecione o Idioma',
              labelStyle: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Abrir opções de suporte')),
                );
              },
              child: const Text('Suporte'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _logout,
              child: const Text('Sair da Conta'),
            ),
          ],
        ),
      ),
    );
  }
}

