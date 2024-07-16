import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter_application_1/widgets/sound_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Playlist playlist = Playlist(
    audios: [
      Audio(
        "assets/sampl.mp3",
        metas: Metas(title: 'First Song'),
      ),
      Audio(
        "assets/sampl1.mp3",
        metas: Metas(title: 'Second Song'),
      ),
      Audio(
        "assets/sampl2.mp3",
        metas: Metas(title: 'Third Song'),
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
      ),
      body: SoundPlayerWidget(
        playlist: playlist,
      ),
    );
  }
}
