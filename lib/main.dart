import 'package:demogame/screens/GameSetting.dart';
import 'package:demogame/screens/Home.dart';
import 'package:demogame/screens/SplashScreen.dart';
import 'package:demogame/screens/UpiPresents.dart';
import 'package:demogame/screens/Welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final isMusicOn =
    ValueNotifier<bool>(true);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
    ]);
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: 'Alferain Nurainia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "splash",
      routes: {
        'splash'        : (BuildContext context) => SplashScreen(),
        'upi_presents'  : (BuildContext context) => UpiPresents(),
        'home'          : (BuildContext context) => Home(title: "alferain"),
        'game_setting'  : (BuildContext context) => GameSetting(title: "setting"),
      },
    );
  }
}
