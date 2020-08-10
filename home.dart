import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

import "package:audioplayers/audioplayers.dart";
import 'package:flutter/cupertino.dart';

myapp1() {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioPlayer.logEnabled = true;

  pause() async {
    int result = await audioPlayer.pause();
    if (result == 1) {}
  }

  var mybody = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('image/music.jpg'), fit: BoxFit.cover),
      ),
      margin: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 50, left: 20, bottom: 50),
              padding: EdgeInsets.only(bottom: 40),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 70,
                        child: Card(
                          color: Colors.black,
                          child: Image.asset('image/nzpic.jfif'),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "Nazm Nazm",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              RaisedButton(
                                onPressed: () {
                                  var audio = AudioCache();
                                  audio.play('nazm.mp3');
                                },
                                child: Icon(Icons.play_arrow),
                                color: Colors.green[300],
                              ),
                              RaisedButton(
                                onPressed: () {
                                  audioPlayer.pause();
                                },
                                child: Icon(Icons.pause),
                                color: Colors.red[300],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 70,
                        child: Card(
                          color: Colors.black,
                          child: Image.asset('image/Hjpic.jfif'),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "Hai Junoon",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              RaisedButton(
                                onPressed: () {
                                  var audio = AudioCache();
                                  audio.play('Haijunoon.mp3');
                                },
                                child: Icon(Icons.play_arrow),
                                color: Colors.green[300],
                              ),
                              RaisedButton(
                                onPressed: () {
                                  audioPlayer.pause();
                                },
                                child: Icon(Icons.pause),
                                color: Colors.red[300],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 70,
                        child: Card(
                          color: Colors.black,
                          child: Image.asset('image/bawara_man.jpg'),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "Bawara Man",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              RaisedButton(
                                onPressed: () {
                                  var audio = AudioCache();
                                  audio.play('Bawara_mann.mp3');
                                },
                                child: Icon(Icons.play_arrow),
                                color: Colors.green[300],
                              ),
                              RaisedButton(
                                onPressed: () {
                                  audioPlayer.pause();
                                },
                                child: Icon(Icons.pause),
                                color: Colors.red[300],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ))
        ],
      ));

  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
        title: Text(
          'Music Player',
          textAlign: TextAlign.center,
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.black54,
      ),
      body: mybody,
    ),
  );
}
