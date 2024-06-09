import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ranjitha_portfolio/screens/home.dart';
import 'utils/strings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: StringConst.name,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
