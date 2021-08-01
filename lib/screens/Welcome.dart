import 'package:demogame/utils/botonGamer.dart';
import 'package:demogame/utils/dialogs.dart';
import 'package:demogame/utils/noteBook.dart';
import 'package:demogame/utils/sounds.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Welcome extends StatefulWidget {
  Welcome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  Sounds soundsEffects = new Sounds();

  bool _changeColor = false;

  void _changeBackgroundColor() {
    setState(() => _changeColor = !_changeColor);
    Future.delayed(const Duration(seconds: 1),
        () => setState(() => _changeColor = !_changeColor));
  }

  @override
  void setState(fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    //soundsEffects.playLocalMusic("music/and_i_love_her.mid");
    return Scaffold(
      body: Center(
        child: Center(
          child: Container(
            child: new Text(
                'Tap To Continue',
                style: new TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'Roboto',
                  color: new Color(0xFF26C6DA)
                ),
              ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Color.fromRGBO(0, 89, 236, 0.5), BlendMode.color),
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/image/background/scr_mempersembahkan.png",
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
