import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class RingtonePage extends StatefulWidget {
  const RingtonePage({super.key});

  @override
  State<RingtonePage> createState() => _RingtonePageState();
}

class _RingtonePageState extends State<RingtonePage> {
  final List<Map<String, String>> ringtones = [
    {"name": "Ringtone 1", "file": "iphone.mp3"},
    {"name": "Ringtone 2", "file": "sound_of_silence.mp3"},
    {"name": "Ringtone 3", "file": "thank_god.mp3"},
    {"name": "Ringtone 4", "file": "wings.mp3"},
  ];

  final AudioPlayer _audioPlayer = AudioPlayer();
  String? _currentlyPlaying;

  Future<void> _playRingtone(String filePath) async {
    if (_currentlyPlaying == filePath) {
      // Stop the currently playing ringtone
      await _audioPlayer.stop();
      setState(() {
        _currentlyPlaying = null;
      });
    } else {
      // Play the selected ringtone
      await _audioPlayer.play(AssetSource(filePath));
      setState(() {
        _currentlyPlaying = filePath;
      });
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ringtones'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          itemCount: ringtones.length,
          itemBuilder: (context, index) {
            final ringtone = ringtones[index];
            final isPlaying = _currentlyPlaying == ringtone["file"];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: isPlaying ? Colors.green : Colors.deepPurple,
                child: Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
              title: Text(
                ringtone["name"]!,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              onTap: () => _playRingtone(ringtone["file"]!),
              trailing: isPlaying
                  ? const Text(
                "Playing",
                style: TextStyle(color: Colors.green),
              )
                  : null,
            );
          },
        ),
      ),
    );
  }
}
