import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/song_widget.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({super.key});

  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
  final Playlist playlistEx = Playlist(
    audios: [
      Audio(
        "assets/sampl.mp3",
        metas: Metas(title: 'First Song', artist: 'Artist 1'),
      ),
      Audio(
        "assets/sampl1.mp3",
        metas: Metas(title: 'Second Song', artist: 'Artist 2'),
      ),
      Audio(
        "assets/sampl2.mp3",
        metas: Metas(title: 'Third Song', artist: 'Artist 3'),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlayList Page'),
      ),
      body: ListView(
        children: [
          for (var audio in playlistEx.audios)
            SongWidget(
              audio: audio,
            ),
        ],
      ),
    );
  }
}
