import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:demogame/utils/sounds.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:imagebutton/imagebutton.dart';

class GameSetting extends StatefulWidget {
  GameSetting({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GameSetting createState() => _GameSetting();
}

class _GameSetting extends State<GameSetting> {
  Sounds soundsEffects = new Sounds();
  final AudioCache _buttonClick = AudioCache(
      prefix: 'music/',
      fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
    );

  @override
  void setState(fn) {
    super.setState(fn);
  }

  void _playButtonTapped() {
      _buttonClick.play('mouse_click_sound_effect.mp3');
      print('pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container (
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/image/background/1.1_setting.png",
                    )
                ),
                
            ),
            child: Column (
                children: [
                    /* Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ImageButton(
                                  children: <Widget>[],
                                  width: 42,
                                  height: 42,
                                  paddingTop: 5,
                                  pressedImage: Image.asset(
                                    "assets/image/buttons/bt_setting_pressed.png",
                                  ),
                                  unpressedImage: Image.asset("assets/image/buttons/bt_setting_brown.png"),
                                  onTap: () {
                                    _playButtonTapped();
                                  },
                              ),
                          ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ImageButton(
                                  children: <Widget>[],
                                  width: 42,
                                  height: 42,
                                  paddingTop: 5,
                                  pressedImage: Image.asset(
                                    "assets/image/buttons/bt_question_pressed.png",
                                  ),
                                  unpressedImage: Image.asset("assets/image/buttons/bt_question_brown.png"),
                                  onTap: () {
                                    _playButtonTapped();
                                  },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ImageButton(
                                  children: <Widget>[],
                                  width: 42,
                                  height: 42,
                                  paddingTop: 5,
                                  pressedImage: Image.asset(
                                    "assets/image/buttons/bt_exit_pressed.png",
                                  ),
                                  unpressedImage: Image.asset("assets/image/buttons/bt_exit_brown.png"),
                                  onTap: () {
                                    _playButtonTapped();
                                  },
                              ),
                            ),
                        ],
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageButton(
                                      children: <Widget>[],
                                      width: 200,
                                      height: 60,
                                      pressedImage: Image.asset(
                                        "assets/image/buttons/bt_play_pressed.png",
                                      ),
                                      unpressedImage: Image.asset("assets/image/buttons/bt_play_green.png"),
                                      onTap: () {
                                        _playButtonTapped();
                                      },
                                  )
                              ],
                            ),
                        ],
                      ),
                    ), */
                    
              ],
            ),
        )
    );
  }
}
