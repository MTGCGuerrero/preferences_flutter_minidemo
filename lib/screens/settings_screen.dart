import 'package:flutter/material.dart';
import 'package:preferences_demo_app/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'Settings';
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkmode = false;
  int gender = 1;
  String name = 'Pancho';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Ajustes',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
              ),
              Divider(),
              SwitchListTile.adaptive(
                title: Text('Darkmode'),
                value: isDarkmode,
                onChanged: (value) {
                  isDarkmode = value;
                  setState(() {});
                },
              ),
              Divider(),
              RadioListTile<int>(
                  value: 1,
                  groupValue: gender,
                  title: Text('Masculino'),
                  onChanged: (value) {
                    gender = value ?? 1;
                    setState(() {});
                  }),
              RadioListTile<int>(
                  value: 2,
                  groupValue: gender,
                  title: Text('Femenino'),
                  onChanged: (value) {
                    gender = value ?? 2;
                    setState(() {});
                  }),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: 'Gatos',
                  onChanged: (value) {
                    name = value;
                    setState(() {
                      
                    });
                  },
                  decoration: InputDecoration(
                      labelText: 'Nombre', helperText: 'Nombre del usuario'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
