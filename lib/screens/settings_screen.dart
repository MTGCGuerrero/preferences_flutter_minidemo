import 'package:flutter/material.dart';
import 'package:preferences_demo_app/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  static const String routerName = 'Settings';
  const SettingsScreen({super.key});
  

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
          child: Column(children: [
            Text('Ajustes',style: TextStyle(fontSize: 45,fontWeight: FontWeight.w300),),
            Divider(),

            SwitchListTile.adaptive(
              title: Text('Darkmode'),
              value: true, onChanged: (value) {

            },),
            Divider(),
            RadioListTile<int>(value: 1, groupValue: 1,
            title: Text('Masculino'),
             onChanged: (value){

            }),
            RadioListTile<int>(
                  value: 1,
                  groupValue: 1,
                  title: Text('Femenino'),
                  onChanged: (value) {}),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: 'Gatos',
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  helperText: 'Nombre del usuario'
                ),
              ),
            ),

            
          ],),
        ),
      ),
    );
  }
}
