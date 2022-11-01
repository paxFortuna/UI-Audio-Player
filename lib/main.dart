import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final player = AudioPlayer();

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    player.play(AssetSource('hyper.mp3'));
                    // player.play(setSourceUrl(url)); // equivalent to setSource(UrlSource(url));
                    //player.play(DeviceFileSource(localFile)); // will immediately start playing
                  },
                  child: Text('Play'),
                ),
                ElevatedButton(
                  onPressed: () {
                    player.stop();
                  },
                  child: Text('Stop'),
                ),

                ElevatedButton(
                  onPressed: () {
                    player.pause();
                  },
                  child: Text('Pause'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
