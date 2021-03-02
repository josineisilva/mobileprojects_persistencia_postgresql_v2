import 'package:flutter/material.dart';
import 'package:preferences/preferences.dart';
import 'pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefService.init(prefix: 'pref_');
  PrefService.setDefaultValues({'host': '10.0.2.2'});
  PrefService.setDefaultValues({'port': '5432'});
  PrefService.setDefaultValues({'database': 'mobile'});
  PrefService.setDefaultValues({'user': 'mobile'});
  PrefService.setDefaultValues({'password': 'mobile'});

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
