import 'package:flutter/foundation.dart';
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
  var duration = ''.obs;
  var position = ''.obs;
  var max = 0.0.obs;
  var value = 0.0.obs;

  @override
  void onInit() {
    super.onInit();

    // checkPermission();

    requestStoragePermission();

  }

  updatePosition() {
    audioPlayer.durationStream.listen((event) {
      duration.value = event.toString().split(".")[0];
      max.value = event!.inSeconds.toDouble();
    });

    audioPlayer.positionStream.listen((event) {
      position.value = event.toString().split(".")[0];
      value.value = event.inSeconds.toDouble();
    });
  }

  changeDurationToSeconds(seconds) {
    var duration = Duration(seconds: seconds);
    audioPlayer.seek(duration);
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

 Future<void> checkPermission() async {
    var permission = await Permission.storage.request();
    if (permission.isGranted) {
    } else {
      checkPermission();
    }
  }

  Future<void> requestStoragePermission() async {
    if(!kIsWeb) {
      bool permissionStatus = await audioQuery.permissionsStatus();
      if(!permissionStatus) {
        await audioQuery.permissionsRequest();
      }
    }
  }

  //  void getFiles() async { //asyn function to get list of files
  //     List<StorageInfo> storageInfo = await PathProviderEx.getStorageInfo();
  //     var root = storageInfo[0].rootDir; //storageInfo[1] for SD card, geting the root directory
  //     var fm = FileManager(root: Directory(root)); //
  //     files = await fm.filesTree(
  //       excludedPaths: ["/storage/emulated/0/Android"],
  //       extensions: ["mp3"] //optional, to filter files, list only mp3 files
  //     );
  //     setState(() {}); //update the UI
  // }
}
