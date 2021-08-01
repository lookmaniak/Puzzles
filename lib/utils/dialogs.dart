import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:demogame/main.dart';
import 'package:demogame/screens/Home.dart';
import 'package:demogame/utils/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:imagebutton/imagebutton.dart';

class Dialogs {
  

  static alert(BuildContext context,
      {String title = '',
      String message: '',
      IconData icon = Icons.add_alert,
      //double width = 400,
      double height = 300,
      Color color = Colors.cyan,
      VoidCallback onContinue,
      bool localMethod = true}) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return new WillPopScope(
            onWillPop: () async => false,
            child: Dialog(
                //backgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(12.0)), //this right here
                child: Center(
                  child: new Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15)),
                      child: Container(
                          margin: EdgeInsets.only(bottom: 2),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 19, 81, 1),
                              borderRadius: BorderRadius.circular(15)),
                          child: Container(
                              margin: EdgeInsets.only(bottom: 6),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 52, 176, 1),
                                  border: Border.all(
                                      color: Colors.white38, width: 0.5),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Container(
                                  margin: EdgeInsets.all(2.7),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(0, 19, 81, 1),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 3),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(0, 88, 236, 1),
                                        border: Border.all(
                                            color: Colors.white38, width: 0.5),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      children: <Widget>[
                                        Stack(
                                          children: <Widget>[
                                            Container(
                                                height: 60,
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        0, 19, 81, 1),
                                                    border: Border.all(
                                                        color: Colors.white38,
                                                        width: 0.5),
                                                    borderRadius:
                                                        BorderRadius.vertical(
                                                            top:
                                                                Radius.circular(
                                                                    15)))),
                                            Container(
                                                margin: EdgeInsets.all(5),
                                                height: 20,
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        85, 143, 242, 0.5),
                                                    border: Border.all(
                                                        color: Colors.white38,
                                                        width: 0.5),
                                                    borderRadius:
                                                        BorderRadius.vertical(
                                                            top:
                                                                Radius.circular(
                                                                    15)))),
                                            Positioned(
                                                width: 6,
                                                height: 5,
                                                top: 4,
                                                right: 4,
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(500),
                                                        color: Colors.white))),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                margin:
                                                    EdgeInsets.only(top: 10),
                                                child: Text(
                                                  title,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Gamer",
                                                      fontSize: 40),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    top: 10, right: 10),
                                                
                                              ),
                                            )
                                          ],
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    85, 143, 242, 0.5),
                                                border: Border.all(
                                                    color: Colors.white38,
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                        bottom: Radius.circular(
                                                            15))),
                                            child: Container(
                                              margin: EdgeInsets.all(20),
                                              child: Text(
                                                message,
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontFamily: "Gamer"),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 10, right: 10),
                                          
                                        ),
                                      ],
                                    ),
                                  ))))),
                )),
          );
        });
  }

  static alertWin(BuildContext context,
      {String title = '',
      String message = '',
      double titleSize = 55,
      IconData icon = Icons.add_alert,
      Color color = Colors.cyan,
      VoidCallback onContinue,
      bool stars = false,
      int starValue = 0}) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return new WillPopScope(
            onWillPop: () async => false,
            child: Dialog(
                backgroundColor: Colors.transparent, //this right here
                child: Center(
                  child: new Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15)),
                      child: Container(
                          margin: EdgeInsets.only(bottom: 2),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 19, 81, 1),
                              borderRadius: BorderRadius.circular(15)),
                          child: Container(
                              margin: EdgeInsets.only(bottom: 6),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 52, 176, 1),
                                  border: Border.all(
                                      color: Colors.white38, width: 0.5),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Container(
                                  margin: EdgeInsets.all(2.7),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(0, 19, 81, 1),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    margin: EdgeInsets.only(bottom: 3),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(0, 88, 236, 1),
                                        border: Border.all(
                                            color: Colors.white38, width: 0.5),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        stars ? Container(
                                          margin: EdgeInsets.all(10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(
                                                Icons.stars,
                                                size: 50,
                                                color: starValue >= 30 ? Colors.yellow : Colors.grey,
                                              ),
                                              Icon(
                                                Icons.stars,
                                                size: 50,
                                                color: starValue >= 50 ? Colors.yellow : Colors.grey,
                                              ),
                                              Icon(
                                                Icons.stars,
                                                size: 50,
                                                color: starValue == 100 ? Colors.yellow : Colors.grey,
                                              ),
                                            ],
                                          ),
                                        ):Container(),
                                        Container(
                                          margin: EdgeInsets.all(10),
                                          child: Text(
                                            title,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Gamer",
                                              fontSize: titleSize,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(10),
                                          child: Text(
                                            message,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Gamer",
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 10, right: 10),
                                          
                                        ),
                                      ],
                                    ),
                                  ))))),
                )),
          );
        });
  }

  static void confirm(BuildContext context,
      {String title = '',
      String message: '',
      IconData icon = Icons.warning,
      double width = 300,
      double height = 220,
      Color color = Colors.cyan,
      VoidCallback onCancel,
      VoidCallback onConfirm}) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)), //this right here
            child: Container(
              height: height,
              width: width,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: height * 0.2,
                      width: width,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(5))),
                      child: Column(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                icon,
                                size: 32,
                                color: Colors.white,
                              )),
                          Container(
                              child: Text(
                            title,
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          )),
                          Expanded(
                            child: Container(
                                child: Text(
                              message,
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 18),
                              textAlign: TextAlign.center,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: FlatButton(
                            onPressed: onConfirm,
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.cyan,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'SI',
                                  style: TextStyle(
                                      color: Colors.cyan, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: FlatButton(
                            onPressed: onCancel,
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.cancel, color: Colors.cyan),
                                SizedBox(width: 10),
                                Text(
                                  'CANCELAR',
                                  style: TextStyle(
                                      color: Colors.cyan, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  static void fichaCatSelected(BuildContext context,
      {String title = '',
      String message: '',
      IconData icon = Icons.warning,
      double width = 450,
      double height = 300,
      Color color = Colors.cyan,
      VoidCallback onConfirmX,
      VoidCallback onConfirmO}) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)), //this right here
            child: Container(
              height: height,
              width: width,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: height * 0.2,
                      width: width,
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
                          Expanded(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 200,
                                  height: 200,
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/image/background/bg_dialog_title.png",
                                          )
                                      ),
                                      
                                  ),
                                  child: Center(
                                          child: Text(
                                          message,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 40,
                                              fontFamily: "All The Way",
                                              height: 0.90
                                              ),
                                          textAlign: TextAlign.center,
                                      ),
                                  )),
                                
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                          Text('hello'),
                          Text('hello2'),
                          Text('hello3'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  static void showSetting(BuildContext context) {
  final AudioCache _buttonClick = AudioCache(
        prefix: 'music/',
        fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
      );

    void _playButtonTapped() {
        _buttonClick.play('mouse_click_sound_effect.mp3');
        print('pressed');
    }

    showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(content: StatefulBuilder(
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
                    padding: EdgeInsets.all(20),
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
                              ValueListenableBuilder(
                              valueListenable: isMusicOn,
                              builder: (context, value, widget) {
                                return ImageButton(
                                    children: <Widget>[],
                                    width: 150,
                                    height: 42,
                                    paddingTop: 5,
                                    pressedImage: Image.asset(
                                      isMusicOn.value ? "assets/image/buttons/bt_setting_togle_off.png" : "assets/image/buttons/bt_setting_togle_on.png",
                                    ),
                                    unpressedImage: Image.asset(
                                      isMusicOn.value ? "assets/image/buttons/bt_setting_togle_off.png" : "assets/image/buttons/bt_setting_togle_on.png",
                                    ),
                                    onTap: () {
                                      _playButtonTapped();

                                      setState(() {
                                        if(isMusicOn.value) {
                                          isMusicOn.value = false; 
                                          soundsEffects.audioPlayer.stop();
                                        } else {
                                          isMusicOn.value = true;
                                          soundsEffects.playLocalMusic("music/main_bgm.mp3");
                                        }
                                      });
                                    },
                                );
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
                  /* Container(
                    height: MediaQuery.of(context).size.height / 3,
                    child: Center(
                      child: Switch(
                        value: isMusicOn.value,
                        onChanged: (value) {
                          setState(() {
                            isMusicOn.value = value;
                            print(isMusicOn.value);
                          });
                        },
                        activeTrackColor: Colors.lightGreenAccent,
                        activeColor: Colors.green,
                      ),
                    ),
                  ); */
                }
                )
                );
              },
            );
          }
}


