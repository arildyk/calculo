import 'package:calculo/components/screens/home_screen.dart';
import 'package:calculo/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(Calculo());
}

class Calculo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculo',
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
