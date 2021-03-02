import 'package:flutter/material.dart';
import 'package:preferences/preferences.dart';

class Configuration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configuracao"),
      ),
      body: PreferencePage([
        PreferenceTitle('DataBase'),
        TextFieldPreference(
          'Host',
          'host',
        ),
        TextFieldPreference(
          'Port',
          'port',
        ),
        TextFieldPreference(
          'Database',
          'database',
        ),
        TextFieldPreference(
          'User',
          'user',
        ),
        TextFieldPreference(
          'Password',
          'password',
        ),
      ]),
    );
  }
}