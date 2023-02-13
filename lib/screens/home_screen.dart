import 'package:flutter/material.dart';
import 'package:preferences_demo_app/shared_preferences/preferences.dart';
import 'package:preferences_demo_app/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarkmode: ${Preferences.isDarkMode} '),
          Divider(),
          Text('Genero:  ${Preferences.gender}'),
          Divider(),
          Text('Nombre de usuario:  ${Preferences.name}'),
          Divider(),
        ],
     ),
   );
  }
}