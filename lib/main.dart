import 'package:flutter/material.dart';
import 'NetAudio.dart';
import 'package:video_player/video_player.dart';
import 'LocalAudio.dart';
import 'Video.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('One Player'),
            bottom: TabBar(
              //   isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.music_note), text: "Assets"),
                Tab(icon: Icon(Icons.music_note), text: "Network"),
                Tab(icon: Icon(Icons.video_library), text: "Network"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              LocalAudio(),
              MyApp1(),
              ChewieListItem(
                  videoPlayerController: VideoPlayerController.network(
                'https://github.com/Abhisheksingh460/video-play/raw/main/KHAAB%20-%20AKHIL%20-%20NEW%20PUNJABI%20SONG-%20FEAT%20PARMISH%20VERMA%20-%20CROWN%20RECORDS%20-New%20Punjabi%20Videos-240p%20(mobVD.com).mp4',
              )),
            ],
          ),
        ),
      ),
    );
  }
}
