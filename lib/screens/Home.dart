import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:demogame/main.dart';
import 'package:demogame/screens/GameSetting.dart';
import 'package:demogame/utils/botonGamer.dart';
import 'package:demogame/utils/dialogs.dart';
import 'package:demogame/utils/noteBook.dart';
import 'package:demogame/utils/sounds.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:demogame/utils/globals.dart';

class Home extends StatefulWidget {
  Home({Key key,this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  bool musicOn = true;
  bool soundOn = true;

  final AudioCache _buttonClick = AudioCache(
      prefix: 'music/',
      fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
    );

  @override
  void setState(fn) {
    super.setState(fn);
  }

  void _playButtonTapped() {
    if(!soundOn) return;

      _buttonClick.play('mouse_click_sound_effect.mp3');
      print('pressed');
  }

  @override
  Widget build(BuildContext context) {
    print(isMusicOn.value.toString());
    
    return Scaffold(
        body: Container (
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/image/background/1_game_start.png",
                    )
                ),
                
            ),
            child: Column (
                children: [
                    Row(
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
                                    return 
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                       
                                        return
                                        StatefulBuilder(
                                            builder: (BuildContext context, StateSetter setState) {
                                              return 
                                                Dialog(
                                                  backgroundColor: Colors.transparent,
                                                  shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5.0)), //this right here
                                                  child: Container(
                                                    padding: EdgeInsets.all(35),
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            fit: BoxFit.fill,
                                                            image: AssetImage(
                                                              "assets/image/background/bg_dialog.png",
                                                            )
                                                        ),
                                                    ),
                                                    child: Column(
                                                      children: <Widget>[
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              padding: EdgeInsets.only(top:10, bottom: 10, left: 20, right: 20),
                                                              decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      fit: BoxFit.fill,
                                                                      image: AssetImage(
                                                                        "assets/image/background/bg_dialog_title.png",
                                                                      )
                                                                  ),
                                                                  
                                                              ),
                                                              child: Center(
                                                                  child: Text(
                                                                      "SETTING",
                                                                      style: TextStyle(
                                                                      color: Colors.white,
                                                                      fontSize: 40,
                                                                      fontFamily: "All The Way",
                                                                      height: 0.90
                                                                  ),
                                                                  textAlign: TextAlign.center,
                                                                )
                                                              )
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets.only(top:10.0, bottom: 10.0, left:30.0, right: 30.0,),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Column(
                                                                children: [
                                                                  Container(
                                                                    width: 50,
                                                                    height: 50,
                                                                    decoration: BoxDecoration(
                                                                        image: DecorationImage(
                                                                            fit: BoxFit.fill,
                                                                            image: AssetImage(
                                                                              "assets/image/background/setting_sound_icon.png",
                                                                            )
                                                                        ),
                                                                    )
                                                                  ),
                                                                ],
                                                              ),
                                                              Expanded(
                                                                child: Column(
                                                                  children: [
                                                                    Container(
                                                                      padding: EdgeInsets.only(left: 30.0, right: 30.0),
                                                                      alignment: Alignment.centerLeft,
                                                                      child: Text(
                                                                            "SOUND",
                                                                            style: TextStyle(
                                                                            color: Colors.black,
                                                                            fontSize: 30,
                                                                            fontFamily: "All The Way",
                                                                            height: 0.90
                                                                        ),
                                                                        textAlign: TextAlign.left,
                                                                      )
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Column(
                                                                  children: [
                                                                    ImageButton(
                                                                          children: <Widget>[],
                                                                          width: 150,
                                                                          height: 42,
                                                                          paddingTop: 5,
                                                                          pressedImage: Image.asset(
                                                                            "assets/image/buttons/bt_setting_state_" + ( !soundOn ? "on" : "off" ) + ".png",
                                                                          ),
                                                                          unpressedImage: Image.asset(
                                                                            "assets/image/buttons/bt_setting_state_" + ( !soundOn ? "on" : "off" ) + ".png",
                                                                          ),
                                                                          onTap: () {
                                                                            _playButtonTapped();
                                                                            setState(() {
                                                                                if(soundOn) {
                                                                                  soundOn = false;
                                                                                } else if(!soundOn) {
                                                                                  soundOn = true;
                                                                                }
                                                                            });
                                                                          },
                                                                      ),
                                                                  ],
                                                                )
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets.only(top:10.0, bottom: 10.0, left:30.0, right: 30.0,),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Column(
                                                                children: [
                                                                  Container(
                                                                    width: 50,
                                                                    height: 50,
                                                                    decoration: BoxDecoration(
                                                                        image: DecorationImage(
                                                                            fit: BoxFit.fill,
                                                                            image: AssetImage(
                                                                              "assets/image/background/setting_music_icon.png",
                                                                            )
                                                                        ),
                                                                    )
                                                                  ),
                                                                ],
                                                              ),
                                                              Expanded(
                                                                child: Column(
                                                                  children: [
                                                                    Container(
                                                                      padding: EdgeInsets.only(left: 30.0, right: 30.0),
                                                                      alignment: Alignment.centerLeft,
                                                                      child: Text(
                                                                            "MUSIC",
                                                                            style: TextStyle(
                                                                            color: Colors.black,
                                                                            fontSize: 30,
                                                                            fontFamily: "All The Way",
                                                                            height: 0.90
                                                                        ),
                                                                        textAlign: TextAlign.left,
                                                                      )
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Column(
                                                                  children: [
                                                                    ImageButton(
                                                                          children: <Widget>[],
                                                                          width: 150,
                                                                          height: 42,
                                                                          paddingTop: 5,
                                                                          pressedImage: Image.asset(
                                                                            "assets/image/buttons/bt_setting_state_" + ( !musicOn ? "on" : "off" ) + ".png",
                                                                          ),
                                                                          unpressedImage: Image.asset(
                                                                            "assets/image/buttons/bt_setting_state_" + ( !musicOn ? "on" : "off" ) + ".png",
                                                                          ),
                                                                          onTap: () {
                                                                            _playButtonTapped();

                                                                            if(musicOn) {
                                                                                soundsEffects.audioPlayer.stop();
                                                                                print('turned off');
                                                                              } else if(!musicOn) {
                                                                                soundsEffects.playLocalMusic("music/main_bgm.mp3");
                                                                                print('turned on');
                                                                              }

                                                                            setState(() {
                                                                              if(musicOn) {
                                                                                musicOn = false;
                                                                              } else if(!musicOn) {
                                                                                musicOn = true;
                                                                              }
                                                                            });
                                                                          },
                                                                      ),
                                                                    
                                                                  ],
                                                                )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                            },
                                          );
                                          /*  */
                                          
                                        },
                                      );
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
                    ),
                    
              ],
            ),
        )
    );
  }
}
      /* body: Center(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/image/background/1_game_start.png",
                  )),
            ),
            child: Row(
              ,
          ),
        ),
      ),
    );
  } */
/*
  Widget _selectedGame({VoidCallback onSelected, FlareActor animation}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        NoteBook.noteBook(
          Container(constraints: BoxConstraints.expand(), child: animation),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BotonGamer(
                  text: "Iniciar",
                  colorCapa1: Color.fromRGBO(237, 166, 0, 1),
                  colorCapa2: Color.fromRGBO(255, 200, 0, 1),
                  colorCapa3: Color.fromRGBO(255, 219, 0, 1),
                  colorCapa4: Color.fromRGBO(251, 232, 85, 0.5),
                  borderSize: 10,
                  onPressed: onSelected),
              /*BotonGamer(
                text: "¡Información!",
                colorCapa1: Color.fromRGBO(0, 19, 81, 1),
                colorCapa2: Color.fromRGBO(0, 52, 176, 1),
                colorCapa3: Color.fromRGBO(0, 88, 236, 1),
                colorCapa4: Color.fromRGBO(85, 143, 242, 0.5),
                borderSize: 10,
                textSize: 30,
                onPressed: () {
                  Dialogs.alert(context,
                      title: "¡Información!",
                      message:
                          "Este juego está en fase de demostración por lo tanto podría tener algunos errores. \nCon el paso de los días otros puzzles serán agregados.");
                },
              ),*/
            ],
          ),
        ),
      ],
    );
  }*/
