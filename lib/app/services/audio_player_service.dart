import 'package:just_audio/just_audio.dart';

class AudioPlayerService {
  AudioPlayerService._();

  final player = AudioPlayer();

  // Create a player
}
//
// abstract class MusicPlayer {
//   Future<void> init();
//   Future<void> load(String url);
//   void play();
//   void pause();
//   void seek(Duration position);
//   Stream<Duration> get position;
//   Stream<Duration> get totalDuration;
//   Future<void> dispose();
// }
//
// class JustAudioPlayer implements MusicPlayer {
//   final AudioPlayer _player = AudioPlayer();
//
//   @override
//   Future<void> init() async {
//     await JustAudioBackground.init(
//       androidNotificationChannelId: 'com.logrocket.demo.channel.audio',
//       androidNotificationChannelName: 'Audio playback',
//       androidNotificationOngoing: true,
//     );
//   }
//
//   @override
//   Future<Duration> load(String url) async {
//     final source = AudioSource.uri(
//       Uri.parse(url),
//       tag: const MediaItem(
//         id: '1',
//         title: "My song",
//       ),
//     );
//     return await _player.setAudioSource(source) ?? Duration.zero;
//   }
//
//   @override
//   void play() => _player.play();
//
//   @override
//   void pause() => _player.pause();
//
//   @override
//   void seek(Duration position) => _player.seek(position);
//
//   @override
//   Stream<Duration> get position => _player.positionStream;
//
//   @override
//   Stream<Duration> get totalDuration => _player.durationStream.map(
//         (duration) => duration ?? Duration.zero,
//   );
//
//   @override
//   Future<void> dispose() async => await _player.dispose();
// }
//

//
// StreamBuilder<Duration>(
// stream: player.totalDuration,
// builder: (context, totalDurationSnapshot) {
// return StreamBuilder<Duration>(
// stream: player.position,
// builder: (context, positionSnapshot) {
// return ProgressBar(
// progress: positionSnapshot.data ?? Duration.zero,
// total: totalDurationSnapshot.data ?? Duration.zero,
// onSeek: player.seek,
// );
// },
// );
// },
// ),