import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notifications = true;
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          SwitchListTile(
            value: notifications,
            onChanged: (val) {
              setState(() => notifications = val);
            },
            title: const Text("Notifications"),
          ),
          SwitchListTile(
            value: darkMode,
            onChanged: (val) {
              setState(() => darkMode = val);
            },
            title: const Text("Dark Mode"),
          ),
          const ListTile(
            title: Text("Language"),
            subtitle: Text("English"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
