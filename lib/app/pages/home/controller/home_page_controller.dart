import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePageController extends GetxController {
  final OnAudioQuery audioQuery = OnAudioQuery();
  final AudioPlayer audioPlayer = AudioPlayer();

  var playIndex = 0.obs;
  var isPlaying = false.obs;

  @override
  void onInit() {
    super.onInit();

    checkPermission();
  }

  playAudio(String? uri, int index) {
    playIndex.value = index;
    try {
      audioPlayer.setAudioSource(AudioSource.uri(Uri.parse(uri!)));

      audioPlayer.play();
      isPlaying.value = true;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  checkPermission() async {
    var permission = await Permission.storage.request();
    if (permission.isGranted) {
    } else {
      checkPermission();
    }
  }
}
