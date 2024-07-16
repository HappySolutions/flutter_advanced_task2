import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter_application_1/pages/playlist_page.dart';
import 'package:flutter_application_1/widgets/sound_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        title: const Center(
          child: Text('Media Player'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => PlaylistPage(playlist: playlistEx)));
            },
            icon: const Icon(Icons.playlist_play),
          ),
        ],
      ),
      body: SoundPlayerWidget(
        playlist: playlistEx,
      ),
    );
  }
}
